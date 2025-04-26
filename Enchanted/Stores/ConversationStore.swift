//
//  ChatsStore.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

import Foundation
import SwiftData
import Combine
import SwiftUI

@Observable
final class ConversationStore: Sendable {
    // ... (Keep existing properties like swiftDataService, conversationState, etc.)
    private var swiftDataService: SwiftDataService
    // Replace Combine cancellable with Task for Azure streaming
    private var generationTask: Task<Void, Never>?

    // Throttler might still be useful for UI updates, keep it
    private var currentMessageBuffer: String = ""
    #if os(macOS)
    private let throttler = Throttler(delay: 0.1)
    #else
    private let throttler = Throttler(delay: 0.1)
    #endif

    @MainActor var conversationState: ConversationState = .completed
    @MainActor var conversations: [ConversationSD] = []
    @MainActor var selectedConversation: ConversationSD?
    @MainActor var messages: [MessageSD] = []

    init(swiftDataService: SwiftDataService) {
        self.swiftDataService = swiftDataService
    }

    // ... (Keep loadConversations, deleteAllConversations, deleteDailyConversations, create, reloadConversation, selectConversation, delete methods as they interact with SwiftData)
    
    func loadConversations() async throws {
        print("loading conversations")
        let fetchedConversations = try await swiftDataService.fetchConversations()
        DispatchQueue.main.async {
            self.conversations = fetchedConversations
        }
        print("loaded conversations")
    }
    
    func deleteAllConversations() async throws {
        DispatchQueue.main.async { [weak self] in
            self?.messages = []
            self?.selectedConversation = nil
        }
        try? await swiftDataService.deleteConversations()
        try? await swiftDataService.deleteMessages()
        try? await loadConversations()
    }
    
    func deleteDailyConversations(_ date: Date) {
        Task {
            DispatchQueue.main.async { [self] in
                selectedConversation = nil
                messages = []
            }
            try? await swiftDataService.deleteConversations()
            try? await loadConversations()
        }
    }
    
    
    func create(_ conversation: ConversationSD) async throws {
        try await swiftDataService.createConversation(conversation)
    }
    
    func reloadConversation(_ conversation: ConversationSD) async throws {
        let (messages, selectedConversation) = try await (
            swiftDataService.fetchMessages(conversation.id),
            swiftDataService.getConversation(conversation.id)
        )
        
        DispatchQueue.main.async {
                self.messages = messages
                self.selectedConversation = selectedConversation
        }
    }
    
    func selectConversation(_ conversation: ConversationSD) async throws {
        try await reloadConversation(conversation)
    }
    
    func delete(_ conversation: ConversationSD) async throws {
        try await swiftDataService.deleteConversation(conversation)
        let fetchedConversations = try await swiftDataService.fetchConversations()
        DispatchQueue.main.async {
            self.selectedConversation = nil
            self.conversations = fetchedConversations
        }
    }

    @MainActor func stopGenerate() {
        generationTask?.cancel()
        generationTask = nil
        // If a message was partially received, mark it as done but potentially indicate interruption
        if conversationState == .loading, let lastMessage = messages.last, !lastMessage.done {
             lastMessage.done = true
             lastMessage.error = true // Indicate it was stopped
             Task { try? await swiftDataService.updateMessage(lastMessage) }
        }
        conversationState = .completed
        print("Generation stopped.")
    }

    @MainActor
    func sendPrompt(userPrompt: String, model: LanguageModelSD, image: Image? = nil, systemPrompt: String = "", trimmingMessageId: String? = nil) {
        guard userPrompt.trimmingCharacters(in: .whitespacesAndNewlines).count > 0 else { return }
        guard model.provider == .azure else {
            print("Attempting to send prompt with non-Azure model.")
            self.handleError("Invalid model provider selected.")
            return
        }

        // Stop any ongoing generation
        stopGenerate()

        let conversation = selectedConversation ?? ConversationSD(name: userPrompt)
        conversation.updatedAt = Date.now
        conversation.model = model // Ensure the selected model is associated

        print("Sending to Azure Model:", model.name)
        print("Conversation:", conversation.name)

        // --- Trim Conversation History ---
        if let trimmingMessageId = trimmingMessageId,
           let trimIndex = conversation.messages.firstIndex(where: { $0.id.uuidString == trimmingMessageId }) {
            // Keep messages *before* the one to trim from
             let messagesToKeep = Array(conversation.messages.sorted { $0.createdAt < $1.createdAt }.prefix(upTo: trimIndex))
             // Delete messages from the trim point onwards (in SwiftData) before adding new ones
             let messagesToDelete = Array(conversation.messages.filter { msg in !messagesToKeep.contains(where: {$0.id == msg.id})} )
             Task { // Perform deletion in background
                 for msg in messagesToDelete {
                     try? await swiftDataService.deleteMessage(msg) // Needs deleteMessage function in service
                 }
                 // Reload might be needed after deletion if UI doesn't update automatically
                  try? await self.reloadConversation(conversation)
             }
             conversation.messages = messagesToKeep // Update in-memory model
        }


        // --- Prepare Messages for Azure ---
        var azureMessages: [AzureMessage] = []

        // 1. Add System Prompt (if provided and it's the start of the conversation or history is empty)
        if !systemPrompt.isEmpty && conversation.messages.filter({ $0.role != "system" }).isEmpty {
            azureMessages.append(.text(role: "system", content: systemPrompt))
        }

        // 2. Add existing history (map MessageSD to AzureMessage)
        azureMessages.append(contentsOf: conversation.messages
            .filter { $0.role != "system" } // Exclude system prompt from history if already added
            .sorted { $0.createdAt < $1.createdAt }
            .map { msg -> AzureMessage in
                // Azure expects 'assistant', not 'ai' or other variations
                let role = (msg.role == "user") ? "user" : "assistant"
                return .text(role: role, content: msg.content) // Assuming text only for history now
            })

        // 3. Add the new User Message (potentially with image)
        var newUserMessageContent: AzureMessage.MessageContent
        var userMessageData: Data? = nil
        if let img = image, let renderedImage = img.render(), model.supportsImages {
             if let compressedData = renderedImage.compressImageData(), // Use your compression logic
                let base64String = compressedData.base64EncodedString() as String? {
                  newUserMessageContent = .contentArray([
                      .text(userPrompt),
                      .imageURL(base64: base64String) // Assumes JPEG by default
                  ])
                 userMessageData = compressedData // Store compressed data for SwiftData
             } else {
                 print("Could not process image for Azure.")
                 newUserMessageContent = .string(userPrompt) // Fallback to text only
             }
         } else {
             newUserMessageContent = .string(userPrompt)
         }
        azureMessages.append(AzureMessage(role: "user", content: newUserMessageContent))

        // --- SwiftData Updates ---
        let userMessageSD = MessageSD(content: userPrompt, role: "user", image: userMessageData)
        userMessageSD.conversation = conversation
        let assistantMessageSD = MessageSD(content: "", role: "assistant", done: false) // Prepare placeholder
        assistantMessageSD.conversation = conversation

        // Update UI immediately
        conversationState = .loading
        currentMessageBuffer = "" // Reset buffer for new response

        Task {
            do {
                // Save conversation and new messages
                try await swiftDataService.updateConversation(conversation)
                try await swiftDataService.createMessage(userMessageSD)
                try await swiftDataService.createMessage(assistantMessageSD)
                // Reload state to ensure UI reflects saved messages
                try await reloadConversation(conversation)
                try? await loadConversations() // Update sidebar

                 // --- Start Azure Streaming ---
                 generationTask = Task {
                     do {
                         let stream = try await AzureOpenAIService.shared.chatStream(
                             deploymentName: model.name,
                             messages: azureMessages,
                             temperature: 0.8 // Or get from settings/model if needed
                         )

                         for try await chunk in stream {
                             if Task.isCancelled {
                                 print("Generation task cancelled.")
                                 break
                             }
                             handleChunk(chunk, for: assistantMessageSD)
                         }

                         if !Task.isCancelled {
                              handleComplete(for: assistantMessageSD)
                         }

                     } catch {
                         if Task.isCancelled {
                              print("Generation task explicitly cancelled.")
                              // State might already be set by stopGenerate()
                         } else {
                             print("Azure Streaming Error: \(error)")
                             handleError(error.localizedDescription, for: assistantMessageSD)
                         }
                     }
                     generationTask = nil // Clear task reference on completion/cancellation
                 }

            } catch {
                print("Error saving messages/conversation: \(error)")
                handleError("Failed to save message: \(error.localizedDescription)")
            }
        }
    }

    // --- Stream Handling Helpers ---

    @MainActor
    private func handleChunk(_ chunk: String, for message: MessageSD) {
        currentMessageBuffer += chunk
        // Throttle UI updates for performance
        throttler.throttle { [weak self] in
            guard let self = self else { return }
             // Find the message in the current list and update its content
            if let index = self.messages.firstIndex(where: { $0.id == message.id }) {
                 self.messages[index].content += self.currentMessageBuffer
                 self.currentMessageBuffer = "" // Clear buffer after UI update
             } else {
                 // If message not found (shouldn't happen often after reload), log it
                 print("Warning: Assistant message placeholder not found in UI list during streaming.")
                 // Fallback: append directly to the SwiftData object (less ideal for UI updates)
                 message.content += self.currentMessageBuffer
                 self.currentMessageBuffer = ""
             }
        }
    }

    @MainActor
    private func handleComplete(for message: MessageSD) {
        // Ensure any remaining buffer is flushed
        if !currentMessageBuffer.isEmpty {
             if let index = self.messages.firstIndex(where: { $0.id == message.id }) {
                 self.messages[index].content += self.currentMessageBuffer
             } else {
                 message.content += self.currentMessageBuffer
             }
            currentMessageBuffer = ""
        }

        message.done = true
        message.error = false
        conversationState = .completed
        print("Azure stream completed successfully.")

        Task(priority: .background) {
            try? await swiftDataService.updateMessage(message)
        }
    }

     @MainActor
     private func handleError(_ errorMessage: String, for message: MessageSD? = nil) {
         print("Handling error: \(errorMessage)")
         conversationState = .error(message: errorMessage)

         // If an assistant message placeholder exists, mark it as errored
         let targetMessage = message ?? messages.last(where: { $0.role == "assistant" && !$0.done })
         if let msg = targetMessage {
             msg.error = true
             msg.done = true // Mark as done even on error to stop loading indicators
             Task(priority: .background) {
                 try? await swiftDataService.updateMessage(msg)
             }
         }
         generationTask = nil // Ensure task is cleared on error
     }

    // Add deleteMessage to SwiftDataService if it doesn't exist
     func deleteMessage(_ message: MessageSD) async throws {
         try await swiftDataService.deleteMessage(message)
     }
}

// Add to SwiftDataService
extension SwiftDataService {
    func deleteMessage(_ message: MessageSD) throws {
         if let modelInContext = modelContext.registeredModel(for: message.modelIdentifier) as? MessageSD {
            modelContext.delete(modelInContext)
            try modelContext.saveChanges()
         } else {
             // Fetch if not registered (less likely for active messages)
             let id = message.id
             let predicate = #Predicate<MessageSD>{ $0.id == id }
             try modelContext.delete(model: MessageSD.self, where: predicate)
             // Save changes if delete(model:where:) doesn't auto-save
             try modelContext.saveChanges()
         }
     }
}
