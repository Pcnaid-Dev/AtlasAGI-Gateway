Okay, Abdul, let's swap out the Ollama backend for Azure OpenAI Service. This involves changing how we handle models, make network requests, and configure settings.

Here are the updated files and necessary additions.

### Code

**1. Update Model Provider Enum**

We need to recognize Azure as a provider type.

```swift
// Enchanted/Models/LanguageModel.swift
// ... (keep existing code)

enum ModelProvider: Codable {
    case ollama
    case azure // Add this case
}
```

**2. Update SwiftData Model for Language Models**

We'll store the Azure *deployment name* instead of the Ollama model name and add the provider type.

```swift
// Enchanted/SwiftData/Models/LanguageModelSD.swift
import Foundation
import SwiftData

@Model
final class LanguageModelSD: Identifiable {
    // Use deploymentName for Azure, keep 'name' for compatibility if needed,
    // but primary identifier for Azure will be deploymentName.
    @Attribute(.unique) var name: String // For Azure, this will store the Deployment Name
    var imageSupport: Bool = false
    @Attribute var provider: ModelProvider = .azure // Default to Azure now, or handle migration

    @Relationship(deleteRule: .cascade, inverse: \ConversationSD.model)
    var conversations: [ConversationSD]? = []

    init(name: String, imageSupport: Bool = false, provider: ModelProvider) {
        self.name = name // Store Deployment Name here
        self.imageSupport = imageSupport
        self.provider = provider
    }

    @Transient var isAvailable: Bool {
        // For Azure, availability depends on endpoint/key validity, not Ollama's check
        // We'll assume configured models are "available" for selection.
        true
    }

    @Transient var isNotAvailable: Bool {
        !isAvailable
    }

    // Keep helpers, but adapt them if needed. Pretty name might just be the deployment name.
    @Transient var prettyName: String {
        name // Deployment name is usually user-friendly enough
    }

    @Transient var prettyVersion: String {
        // Azure deployments don't have versions in the same way Ollama tags do.
        ""
    }

    // Update image support logic based on known Azure model capabilities (e.g., gpt-4-vision)
    @Transient var supportsImages: Bool {
        // You might need a more robust check based on deployment name patterns
        // or store this capability explicitly when adding the model.
        // Example: return name.contains("vision")
        imageSupport // Rely on the stored value
    }

    static let sample: [LanguageModelSD] = [
        .init(name: "gpt-4o", imageSupport: true, provider: .azure),
        .init(name: "gpt-35-turbo", imageSupport: false, provider: .azure)
    ]
}

// MARK: - @unchecked Sendable
extension LanguageModelSD: @unchecked Sendable {}
```

**3. Create Azure OpenAI Service**

This new service handles communication with the Azure API. Replace the contents of `Enchanted/Services/OllamaService.swift` with this, or create a new file `Enchanted/Services/AzureOpenAIService.swift` and update references.

```swift
// Enchanted/Services/AzureOpenAIService.swift
import Foundation
import SwiftUI // For Image handling

// MARK: - Data Structures for Azure API

struct AzureChatRequestData: Codable {
    let messages: [AzureMessage]
    let temperature: Float?
    let max_tokens: Int? = 4096 // Default max tokens, adjust as needed
    let stream: Bool = true
}

struct AzureMessage: Codable {
    let role: String
    let content: MessageContent

    // Support for structured content (text + image)
    enum MessageContent: Codable {
        case string(String)
        case contentArray([ContentPart])

        // Manual Encodable conformance
        func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .string(let text):
                try container.encode(text)
            case .contentArray(let array):
                try container.encode(array)
            }
        }

        // Manual Decodable conformance (if needed, primarily for encoding requests)
        init(from decoder: Decoder) throws {
             let container = try decoder.singleValueContainer()
             if let text = try? container.decode(String.self) {
                 self = .string(text)
             } else if let array = try? container.decode([ContentPart].self) {
                 self = .contentArray(array)
             } else {
                 throw DecodingError.typeMismatch(MessageContent.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unsupported message content format"))
             }
         }
    }

    struct ContentPart: Codable {
        let type: String // "text" or "image_url"
        let text: String?
        struct ImageURL: Codable {
            let url: String // "data:image/jpeg;base64,{base64_string}"
        }
        let image_url: ImageURL?

        // Convenience Initializers
        static func text(_ text: String) -> ContentPart {
            ContentPart(type: "text", text: text, image_url: nil)
        }

        static func imageURL(base64: String, mediaType: String = "jpeg") -> ContentPart {
            ContentPart(type: "image_url", text: nil, image_url: .init(url: "data:image/\(mediaType);base64,\(base64)"))
        }
    }

    // Convenience Initializer for text-only messages
    static func text(role: String, content: String) -> AzureMessage {
        AzureMessage(role: role, content: .string(content))
    }

     // Convenience Initializer for image messages (assumes single image + text)
     static func vision(role: String, text: String, base64Image: String, mediaType: String = "jpeg") -> AzureMessage {
         AzureMessage(role: role, content: .contentArray([
             .text(text),
             .imageURL(base64: base64Image, mediaType: mediaType)
         ]))
     }
}


struct AzureChatResponseChunk: Codable {
    let id: String?
    let object: String?
    let created: Int?
    let model: String?
    let choices: [AzureChoice]?
    let usage: UsageData? // Only present in the final non-streamed chunk or if requested

     struct UsageData: Codable {
        let completion_tokens: Int?
        let prompt_tokens: Int?
        let total_tokens: Int?
     }
}

struct AzureChoice: Codable {
    let index: Int?
    let finish_reason: String? // e.g., "stop", "length"
    let delta: AzureDelta?
    // Optional fields for non-streaming or function calls
    let message: AzureMessage? // Used in non-streaming responses
}

struct AzureDelta: Codable {
    let role: String?
    let content: String?
}


// MARK: - AzureOpenAIService

class AzureOpenAIService: @unchecked Sendable {
    static let shared = AzureOpenAIService()

    private var endpoint: String = ""
    private var apiKey: String = ""
    // Use a recent, stable API version. Check Azure docs for the latest.
    private let apiVersion = "2024-02-01" // Example: Use a specific, available version

    private let urlSession: URLSession

    init() {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 60 // 1 minute timeout
        configuration.timeoutIntervalForResource = 600 // 10 minutes for resource loading (streaming)
        self.urlSession = URLSession(configuration: configuration)
        loadCredentials()
    }

    // Load credentials from UserDefaults
    func loadCredentials() {
        self.endpoint = UserDefaults.standard.string(forKey: "azureEndpoint") ?? ""
        self.apiKey = UserDefaults.standard.string(forKey: "azureApiKey") ?? ""
        print("Azure Service Initialized. Endpoint set: \(!endpoint.isEmpty), API Key set: \(!apiKey.isEmpty)")
    }

    // Check reachability (simple check if endpoint and key are set)
    func reachable() -> Bool {
        return !endpoint.isEmpty && !apiKey.isEmpty
    }

    // Main function to stream chat completions
    func chatStream(deploymentName: String, messages: [AzureMessage], temperature: Float?) async throws -> AsyncThrowingStream<String, Error> {
        guard reachable() else {
            throw URLError(.userAuthenticationRequired) // Or a custom error
        }

        guard let url = URL(string: "\(endpoint)/openai/deployments/\(deploymentName)/chat/completions?api-version=\(apiVersion)") else {
            throw URLError(.badURL)
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue(apiKey, forHTTPHeaderField: "api-key")

        let requestBody = AzureChatRequestData(messages: messages, temperature: temperature)
        do {
            let encoder = JSONEncoder()
            request.httpBody = try encoder.encode(requestBody)
        } catch {
            print("Error encoding request body: \(error)")
            throw error
        }

        print("Azure Request URL: \(url)")
        print("Azure Request Headers: \(request.allHTTPHeaderFields ?? [:])")
       // print("Azure Request Body: \(String(data: request.httpBody ?? Data(), encoding: .utf8) ?? "Invalid Body")")


        return AsyncThrowingStream { continuation in
            let task = urlSession.dataTask(with: request) { data, response, error in
                if let error = error {
                    print("URLSession Error: \(error)")
                    continuation.finish(throwing: error)
                    return
                }

                guard let httpResponse = response as? HTTPURLResponse else {
                    print("Invalid response received")
                    continuation.finish(throwing: URLError(.badServerResponse))
                    return
                }

                // Check for non-200 status codes even if data might be present
                if httpResponse.statusCode != 200 {
                    var errorDetail = "HTTP Status \(httpResponse.statusCode)"
                    if let data = data, let responseBody = String(data: data, encoding: .utf8) {
                        errorDetail += "\nResponse: \(responseBody)"
                         print("Azure API Error Response: \(responseBody)")
                    }
                    continuation.finish(throwing: NSError(domain: "AzureAPIError", code: httpResponse.statusCode, userInfo: [NSLocalizedDescriptionKey: errorDetail]))
                    return
                }

                // If it's a 200 but not streaming (or unexpected format), handle it
                 guard httpResponse.mimeType?.contains("event-stream") == true else {
                     // Handle non-streaming success or error formatted as success
                     if let data = data, let responseBody = String(data: data, encoding: .utf8) {
                         print("Received non-streaming response: \(responseBody)")
                         // You might try to decode it as a full response here if needed
                         // For now, treat as unexpected format if streaming was expected
                         continuation.finish(throwing: URLError(.cannotParseResponse))
                     } else {
                         continuation.finish(throwing: URLError(.badServerResponse))
                     }
                     return
                 }

                // Data task completion doesn't signify stream end for SSE
                // The Delegate handles stream completion or errors during streaming
            }

            let delegate = SSEDelegate(continuation: continuation)
            task.delegate = delegate
            task.resume()

            continuation.onTermination = @Sendable { _ in
                print("Stream terminated.")
                task.cancel()
            }
        }
    }

    // Helper class to manage Server-Sent Events (SSE) stream
    private class SSEDelegate: NSObject, URLSessionDataDelegate {
        var continuation: AsyncThrowingStream<String, Error>.Continuation
        private var buffer = Data()

        init(continuation: AsyncThrowingStream<String, Error>.Continuation) {
            self.continuation = continuation
        }

        func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) {
            buffer.append(data)
           // print("Raw data received: \(String(data: data, encoding: .utf8) ?? "Non-UTF8 data")")
            processBuffer()
        }

        private func processBuffer() {
            // Process buffer line by line, looking for SSE messages
            while let range = buffer.range(of: "\n\n".data(using: .utf8)!) {
                let chunk = buffer.subdata(in: 0..<range.upperBound)
                buffer.removeSubrange(0..<range.upperBound)

                let lines = String(data: chunk, encoding: .utf8)?.split(separator: "\n", omittingEmptySubsequences: false) ?? []

                for line in lines {
                    if line.hasPrefix("data: ") {
                        let jsonDataString = String(line.dropFirst("data: ".count))
                        if jsonDataString.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() == "[done]" {
                            print("SSE stream finished with [DONE]")
                            continuation.finish()
                            return // Stop processing once [DONE] is received
                        }

                        if let jsonData = jsonDataString.data(using: .utf8) {
                            do {
                                let decoder = JSONDecoder()
                                let responseChunk = try decoder.decode(AzureChatResponseChunk.self, from: jsonData)
                                if let content = responseChunk.choices?.first?.delta?.content {
                                    continuation.yield(content)
                                }
                                // Check for finish reason if needed (e.g., stop)
                                if responseChunk.choices?.first?.finish_reason != nil {
                                    print("SSE stream finished with reason: \(responseChunk.choices!.first!.finish_reason!)")
                                   // Don't call finish here, wait for [DONE] or task completion
                                }
                            } catch {
                                print("Error decoding JSON chunk: \(error)")
                                print("Problematic JSON string: \(jsonDataString)")
                               // continuation.finish(throwing: error) // Decide if decoding error is fatal
                            }
                        }
                    }
                }
            }
        }


        func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) {
            processBuffer() // Process any remaining data in the buffer
            if let error = error {
                print("URLSession task completed with error: \(error)")
                continuation.finish(throwing: error)
            } else {
                 print("URLSession task completed successfully (stream might still be processing or finished via [DONE]).")
                // Don't finish here if stream hasn't sent [DONE] yet.
                // Rely on [DONE] or timeout for stream completion.
            }
        }
    }
}

```

**4. Update LanguageModelStore**

Modify how models are loaded and managed.

```swift
// Enchanted/Stores/LanguageModelStore.swift
import Foundation
import SwiftData
import SwiftUI // Add for @MainActor

@Observable
final class LanguageModelStore {
    static let shared = LanguageModelStore(swiftDataService: SwiftDataService.shared)

    private var swiftDataService: SwiftDataService
    @MainActor var models: [LanguageModelSD] = []
    // 'supportsImages' should be derived from the selected model's capability
    @MainActor var supportsImages: Bool {
        selectedModel?.supportsImages ?? false
    }
    @MainActor var selectedModel: LanguageModelSD?

    init(swiftDataService: SwiftDataService) {
        self.swiftDataService = swiftDataService
        Task {
            await loadModels() // Load initially stored models
        }
    }

    @MainActor
    func setModel(model: LanguageModelSD?) {
        guard models.contains(where: { $0.id == model?.id }) || model == nil else {
            print("Attempted to set a model not present in the store.")
            // Optionally select the first available model if the desired one isn't found
             if !models.isEmpty {
                 selectedModel = models.first
             } else {
                 selectedModel = nil
             }
            return
        }
        selectedModel = model
        print("Selected model set to: \(model?.name ?? "None")")
    }

    @MainActor
    func setModel(modelName: String) { // modelName here is the deploymentName
        if let modelToSet = models.first(where: { $0.name == modelName }) {
            setModel(model: modelToSet)
        } else {
             // Fallback if the named model isn't found
            setModel(model: models.first)
            print("Model named '\(modelName)' not found. Falling back to first available model.")
        }
    }

    // Load models stored locally via SwiftData (added through Settings)
    @MainActor
    func loadModels() async {
        do {
            let storedModels = try await swiftDataService.fetchModels().filter { $0.provider == .azure } // Filter for Azure models
            self.models = storedModels
            print("Loaded \(storedModels.count) Azure models from SwiftData.")
            // Ensure a model is selected if one exists
            if selectedModel == nil || !models.contains(where: {$0.id == selectedModel?.id }) {
                 let defaultModelName = UserDefaults.standard.string(forKey: "defaultAzureModel") ?? "" // Use a separate key for default Azure model
                 setModel(modelName: defaultModelName.isEmpty ? models.first?.name ?? "" : defaultModelName)
            }
        } catch {
            print("Error loading models from SwiftData: \(error)")
            self.models = []
            self.selectedModel = nil
        }
    }

     // Add a new model (deployment) to SwiftData via Settings UI
     @MainActor
     func addModel(name: String, supportsImage: Bool) async {
         let newModel = LanguageModelSD(name: name, imageSupport: supportsImage, provider: .azure)
         do {
             // Avoid duplicates - Check if a model with the same name already exists
             let existing = try await swiftDataService.fetchModels().first(where: { $0.name == name && $0.provider == .azure })
             if existing == nil {
                try await swiftDataService.saveModels(models: [newModel]) // Use saveModels which inserts
                print("Added new Azure model: \(name)")
                await loadModels() // Reload to update the UI
             } else {
                 print("Azure model '\(name)' already exists.")
             }
         } catch {
             print("Error saving new model: \(error)")
         }
     }

    // Delete a specific model
    @MainActor
    func deleteModel(_ modelToDelete: LanguageModelSD) async {
        guard modelToDelete.provider == .azure else { return } // Ensure it's an Azure model
         do {
             try await swiftDataService.deleteModels(models: [modelToDelete]) // Need a specific delete function
             print("Deleted Azure model: \(modelToDelete.name)")
             await loadModels() // Reload
         } catch {
             print("Error deleting model: \(error)")
         }
     }


    // Delete all Azure models (use with caution)
    @MainActor
    func deleteAllModels() async {
        do {
            let azureModels = try await swiftDataService.fetchModels().filter { $0.provider == .azure }
            try await swiftDataService.deleteModels(models: azureModels) // Need a specific delete function
            print("Deleted all Azure models.")
            await loadModels() // Reload
        } catch {
            print("Error deleting all Azure models: \(error)")
        }
    }
}

// Extend SwiftDataService to handle deleting specific models
extension SwiftDataService {
     func deleteModels(models: [LanguageModelSD]) throws {
         for model in models {
             // Fetch the specific instance from the context before deleting
             if let modelInContext = modelContext.registeredModel(for: model.modelIdentifier) as? LanguageModelSD {
                  modelContext.delete(modelInContext)
             } else {
                 // If not registered, try fetching by ID (less common if already loaded)
                 let id = model.id
                 let predicate = #Predicate<LanguageModelSD>{ $0.id == id }
                 try modelContext.delete(model: LanguageModelSD.self, where: predicate)
             }
         }
         try modelContext.saveChanges()
     }
}
```

**5. Update ConversationStore**

Modify `sendPrompt` to use the new Azure service and data structures.

```swift
// Enchanted/Stores/ConversationStore.swift
import Foundation
import SwiftData
import Combine // Keep for throttler if needed, but Azure streaming is different
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
                  userMessageContent = .contentArray([
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

```

**6. Update Settings UI**

Replace Ollama settings with Azure settings in `SettingsView.swift` and `Settings.swift`.

```swift
// Enchanted/UI/Shared/Settings/SettingsView.swift
import SwiftUI
import AVFoundation

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode

    // Azure Bindings
    @Binding var azureEndpoint: String
    @Binding var azureApiKey: String

    // Shared Bindings (Keep relevant ones)
    @Binding var systemPrompt: String
    @Binding var vibrations: Bool // Keep if needed for iOS
    @Binding var colorScheme: AppColorScheme
    @Binding var defaultAzureModel: String // Changed from defaultOllamaModel
    @Binding var appUserInitials: String
    @Binding var voiceIdentifier: String

    // State & Actions
    @State var azureStatus: Bool? // Optional: For testing connection
    var save: () -> ()
    var checkAzureConnection: () -> () // Optional: Add a check function
    var deleteAllConversations: () -> () // Keep if needed
    var azureModels: [LanguageModelSD] // Changed from ollamaLanguageModels
    var voices: [AVSpeechSynthesisVoice]
    var onAddModel: (String, Bool) -> Void // Action to add a new model
    var onDeleteModel: (LanguageModelSD) -> Void // Action to delete a model

    @State private var deleteConversationsDialog = false
    @State private var showAddModelSheet = false
    @State private var newModelName: String = ""
    @State private var newModelSupportsImage: Bool = false

    var body: some View {
        VStack {
            // --- Header ---
            ZStack {
                HStack {
                    Button("Cancel") { presentationMode.wrappedValue.dismiss() }
                        .foregroundStyle(Color(.label))
                    Spacer()
                    Button("Save", action: save)
                         .foregroundStyle(Color(.label))
                }
                Text("Settings").fontWeight(.medium).foregroundStyle(Color(.label))
            }
            .padding()

            // --- Form ---
            Form {
                 // --- Azure OpenAI Section ---
                 Section(header: Text("Azure OpenAI").font(.headline)) {
                     TextField("Azure Endpoint", text: $azureEndpoint, prompt: Text("e.g., https://your-resource.openai.azure.com"))
                         .textContentType(.URL)
                         .disableAutocorrection(true)
                         .textFieldStyle(RoundedBorderTextFieldStyle())
                     #if !os(macOS)
                         .padding(.top, 8)
                         .keyboardType(.URL)
                         .autocapitalization(.none)
                     #endif

                     SecureField("API Key", text: $azureApiKey)
                         .textFieldStyle(RoundedBorderTextFieldStyle())

                    // Optional: Connection Check Button
                    // Button("Check Connection", action: checkAzureConnection)
                 }

                 // --- Model Management Section ---
                 Section("Azure Deployments") {
                    Picker("Default Deployment", selection: $defaultAzureModel) {
                         Text("None").tag("") // Option for no default
                         ForEach(azureModels.filter({ $0.provider == .azure }), id: \.name) { model in
                             Text(model.name).tag(model.name)
                         }
                     }

                     Text("Manage your added Azure deployment names below.")
                         .font(.caption)
                         .foregroundColor(.gray)

                     List {
                         ForEach(azureModels.filter({ $0.provider == .azure })) { model in
                             HStack {
                                 Text(model.name)
                                 if model.supportsImages {
                                     Image(systemName: "photo")
                                         .foregroundColor(.gray)
                                 }
                                 Spacer()
                             }
                              .contentShape(Rectangle()) // Make row tappable for context menu
                             .contextMenu { // Add delete via context menu
                                Button("Delete", systemImage: "trash", role: .destructive) {
                                    onDeleteModel(model)
                                }
                             }
                         }
                         .onDelete { indexSet in // Swipe to delete on iOS
                             indexSet.forEach { index in
                                 let modelToDelete = azureModels.filter({ $0.provider == .azure })[index]
                                 onDeleteModel(modelToDelete)
                             }
                         }
                     }

                     Button("Add Deployment Name") {
                         newModelName = ""
                         newModelSupportsImage = false
                         showAddModelSheet = true
                     }
                 }


                // --- General App Settings ---
                Section(header: Text("APP").font(.headline)) {
                    VStack(alignment: .leading) {
                        Text("System prompt")
                        TextEditor(text: $systemPrompt)
                            .font(.system(size: 13))
                            .cornerRadius(4)
                            .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.gray.opacity(0.3), lineWidth: 1))
                            .multilineTextAlignment(.leading)
                            .frame(minHeight: 100)
                    }

                    #if os(iOS)
                    Toggle(isOn: $vibrations) {
                        Label("Vibrations", systemImage: "water.waves").foregroundStyle(Color.label)
                    }
                    #endif

                    Picker("Appearance", selection: $colorScheme) {
                        ForEach(AppColorScheme.allCases, id: \.self) { scheme in
                            Text(scheme.toString).tag(scheme.id)
                        }
                    } label: {
                        Label("Appearance", systemImage: "sun.max").foregroundStyle(Color.label)
                    }

                     Picker("Voice", selection: $voiceIdentifier) {
                          Text("System Default").tag("")
                         ForEach(voices, id: \.self.identifier) { voice in
                             Text(voice.prettyName).tag(voice.identifier)
                         }
                     } label: {
                         Label("Voice", systemImage: "waveform").foregroundStyle(Color.label)
                     }


                    TextField("User Initials", text: $appUserInitials)
                        .disableAutocorrection(true)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        #if os(iOS)
                        .autocapitalization(.none)
                        #endif
                }

                 // --- Danger Zone ---
                 Section(header: Text("Danger Zone").font(.headline)) {
                    Button(role: .destructive) {
                        deleteConversationsDialog = true
                    } label: {
                        HStack {
                            Spacer()
                            Text("Clear All Conversations").foregroundStyle(Color(.systemRed))
                            Spacer()
                        }
                    }
                }
            }
            .formStyle(.grouped)
        }
        .preferredColorScheme(colorScheme.toiOSFormat)
        .confirmationDialog("Delete All Conversations?", isPresented: $deleteConversationsDialog, titleVisibility: .visible) {
            Button("Delete", role: .destructive, action: deleteAllConversations)
        } message: {
            Text("This cannot be undone.")
        }
        .sheet(isPresented: $showAddModelSheet) {
             // Simple sheet to add a model name
            VStack {
                Text("Add Azure Deployment").font(.title2).padding()
                TextField("Deployment Name", text: $newModelName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                Toggle("Supports Images (e.g., gpt-4-vision)", isOn: $newModelSupportsImage)
                     .padding(.horizontal)

                 HStack {
                     Button("Cancel") { showAddModelSheet = false }.buttonStyle(.bordered)
                     Spacer()
                     Button("Add") {
                         if !newModelName.isEmpty {
                            onAddModel(newModelName, newModelSupportsImage)
                         }
                         showAddModelSheet = false
                     }
                     .buttonStyle(.borderedProminent)
                     .disabled(newModelName.isEmpty)
                 }.padding()

                 Spacer()
            }
            #if os(macOS)
            .frame(width: 300, height: 200)
            #endif
        }
    }
}

// Preview needs updates to match new bindings
#Preview {
    SettingsView(
        azureEndpoint: .constant("https://your-resource.openai.azure.com"),
        azureApiKey: .constant("YOUR_API_KEY"),
        systemPrompt: .constant("You are a helpful AI."),
        vibrations: .constant(true),
        colorScheme: .constant(.system),
        defaultAzureModel: .constant("gpt-4o"),
        appUserInitials: .constant("AM"),
        voiceIdentifier: .constant(""),
        save: {},
        checkAzureConnection: {},
        deleteAllConversations: {},
        azureModels: LanguageModelSD.sample,
        voices: [],
        onAddModel: {_,_ in },
        onDeleteModel: {_ in }
    )
}
```

```swift
// Enchanted/UI/Shared/Settings/Settings.swift
import SwiftUI
import Combine
import AVFoundation // Make sure this is imported

struct Settings: View {
    // Use specific Azure keys in AppStorage
    @AppStorage("azureEndpoint") private var azureEndpoint: String = ""
    @AppStorage("azureApiKey") private var azureApiKey: String = ""
    @AppStorage("defaultAzureModel") private var defaultAzureModel: String = "" // Separate default

    // Keep other relevant AppStorage keys
    @AppStorage("systemPrompt") private var systemPrompt: String = ""
    @AppStorage("vibrations") private var vibrations: Bool = true
    @AppStorage("colorScheme") private var colorScheme = AppColorScheme.system
    @AppStorage("appUserInitials") private var appUserInitials: String = ""
    @AppStorage("voiceIdentifier") private var voiceIdentifier: String = "" // Keep for Text-to-Speech

    // Remove Ollama specific AppStorage keys
    // @AppStorage("ollamaUri") private var ollamaUri: String = ""
    // @AppStorage("ollamaBearerToken") private var ollamaBearerToken: String = ""
    // @AppStorage("pingInterval") private var pingInterval: String = "5" // Remove if not needed for Azure

    // State Objects and Environment
    @State var languageModelStore = LanguageModelStore.shared
    @State var conversationStore = ConversationStore.shared
    @StateObject private var speechSynthesizer = SpeechSynthesizer.shared
    @Environment(\.presentationMode) var presentationMode

    // Timer for voice list refresh (keep if Text-to-Speech is used)
    private let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    @State private var cancellable: AnyCancellable?

    // Save function - Updates Azure service credentials
    private func save() {
        // Trim whitespace, could add URL validation
        azureEndpoint = azureEndpoint.trimmingCharacters(in: .whitespacesAndNewlines)
        azureApiKey = azureApiKey.trimmingCharacters(in: .whitespaces)

        // Re-initialize/update the Azure service with new credentials
        AzureOpenAIService.shared.loadCredentials()

        Task {
            await Haptics.shared.mediumTap()
             // Reload models from SwiftData, as the list might have been edited
             await languageModelStore.loadModels()
        }
        presentationMode.wrappedValue.dismiss()
    }

    // Optional: Function to check Azure connection (basic reachability)
    private func checkAzureConnection() {
        // For now, just check if endpoint/key are set. A real check would make a simple API call.
         print("Checking Azure connection readiness...")
         print("Endpoint Set: \(!azureEndpoint.isEmpty)")
         print("API Key Set: \(!azureApiKey.isEmpty)")
         // Update state if needed for UI feedback
         // self.azureStatus = AzureOpenAIService.shared.reachable()
    }

    // Delete all conversations (remains the same logic)
    private func deleteAllConversations() {
        Task {
             try? await conversationStore.deleteAllConversations()
             await Haptics.shared.mediumTap() // Add haptic feedback
        }
    }

     // Add model function to be passed to the View
     @MainActor private func addModel(name: String, supportsImage: Bool) {
         Task {
             await languageModelStore.addModel(name: name, supportsImage: supportsImage)
             // Optionally set as default if it's the first one added
              if languageModelStore.models.count == 1 {
                  defaultAzureModel = name
              }
         }
     }

      // Delete model function to be passed to the View
      @MainActor private func deleteModel(_ model: LanguageModelSD) {
         Task {
             await languageModelStore.deleteModel(model)
             // If the deleted model was the default, reset the default
             if defaultAzureModel == model.name {
                 defaultAzureModel = languageModelStore.models.first?.name ?? ""
             }
         }
     }

    var body: some View {
        SettingsView(
            // Pass Azure bindings
            azureEndpoint: $azureEndpoint,
            azureApiKey: $azureApiKey,

            // Pass shared bindings
            systemPrompt: $systemPrompt,
            vibrations: $vibrations, // Keep for iOS
            colorScheme: $colorScheme,
            defaultAzureModel: $defaultAzureModel, // Use the Azure default key
            appUserInitials: $appUserInitials,
            voiceIdentifier: $voiceIdentifier, // Keep for Text-to-Speech

            // Pass actions
            save: save,
            checkAzureConnection: checkAzureConnection, // Pass the check function
            deleteAllConversations: deleteAllConversations, // Pass delete function

            // Pass data sources
            azureModels: languageModelStore.models, // Pass models
            voices: speechSynthesizer.voices, // Pass voices for picker
            onAddModel: addModel,           // Pass add action
            onDeleteModel: deleteModel        // Pass delete action
        )
        .frame(maxWidth: 700)
        #if os(visionOS)
        .frame(minWidth: 600, minHeight: 800)
        #endif
        .onChange(of: defaultAzureModel) { _, modelName in
             // Ensure the selected default model exists in the store
             languageModelStore.setModel(modelName: modelName)
        }
        .onAppear {
             // Load voices when the view appears
             speechSynthesizer.fetchVoices()
             // Start timer for background voice list refresh
             cancellable = timer.sink { _ in
                 speechSynthesizer.fetchVoices()
             }
             // Ensure models are loaded on appear as well
             Task {
                 await languageModelStore.loadModels()
             }
        }
        .onDisappear {
            // Stop the timer when the view disappears
            cancellable?.cancel()
        }
         // Make sure the scene value is correctly handled if needed for macOS menu items
         #if os(macOS)
         // .focusedSceneValue(\.showSettings, $showSettings) // If using standard macOS settings window triggering
         #endif
    }
}

#Preview {
    Settings()
}
```

**7. Update Completions Panel (macOS)**

Modify `CompletionsPanelVM.swift` to use Azure.

```swift
// Enchanted/UI/macOS/PromptPanel/PanelCompletionsVM.swift
import SwiftUI
// Remove OllamaKit import if present
import Combine // Keep if using throttlers or other Combine features

@Observable
final class CompletionsPanelVM {
    var selectedText: String?
    var onReceiveText: (String) -> ()
    var messageResponse: String = ""
    var isProcessing = false // Renamed from isReady for clarity
    let sentenceQueue = AsyncQueue<String>() // Keep for streaming output to accessibility
    private var generationTask: Task<Void, Never>? // Use Task for Azure

    init(onReceiveText: @escaping (String) -> Void = {_ in}) {
        self.onReceiveText = onReceiveText
    }

    // Keep constructPrompt as it's generic text manipulation
    static func constructPrompt(completion: CompletionInstructionSD, selectedText: String) -> String {
        var prompt = completion.instruction

        if prompt.contains("{{text}}") {
            prompt = prompt.replacingOccurrences(of: "{{text}}", with: selectedText)
        } else {
            prompt += "\n\n" + selectedText // Ensure separation
        }
        print("Constructed completion prompt: \(prompt)")
        return prompt
    }

    @MainActor
    func sendPrompt(completion: CompletionInstructionSD, model: LanguageModelSD) {
        guard let selectedText = selectedText, !isProcessing else {
             print("Completion request ignored: No text selected or already processing.")
             return
        }
        guard model.provider == .azure else {
             print("Completion request ignored: Non-Azure model selected.")
             // Optionally provide user feedback here
             return
        }

        stopProcessing() // Cancel any existing task

        let prompt = CompletionsPanelVM.constructPrompt(completion: completion, selectedText: selectedText)

        let azureMessages: [AzureMessage] = [.text(role: "user", content: prompt)]

        messageResponse = "" // Clear previous response
        isProcessing = true
        print("Sending completion request to Azure model: \(model.name)")

        Task {
            if !AzureOpenAIService.shared.reachable() {
                handleError("Azure service unreachable. Check Settings.")
                return
            }

             generationTask = Task {
                do {
                    let stream = try await AzureOpenAIService.shared.chatStream(
                        deploymentName: model.name,
                        messages: azureMessages,
                        temperature: completion.modelTemperature ?? 0.8 // Use completion-specific temp
                    )

                    for try await chunk in stream {
                        if Task.isCancelled { break }
                        await handleChunk(chunk)
                    }

                    if !Task.isCancelled {
                        handleComplete()
                    }

                } catch {
                    if Task.isCancelled {
                        print("Completion generation task cancelled.")
                    } else {
                        print("Azure Completion Streaming Error: \(error)")
                        handleError(error.localizedDescription)
                    }
                }
                // Ensure state is reset regardless of how the task ends
                await MainActor.run {
                     isProcessing = false
                     generationTask = nil
                }
            }
        }
    }

    @MainActor
    private func handleChunk(_ chunk: String) async {
        // Enqueue for accessibility printing/typing
        await sentenceQueue.enqueue(chunk)
        // Update internal response state (optional, if needed for UI/debugging)
        self.messageResponse += chunk
    }

     @MainActor
     private func handleError(_ errorMessage: String) {
         print("Completion Error: \(errorMessage)")
         // Optionally provide UI feedback about the error
         messageResponse = "Error: \(errorMessage)" // Update internal state
         isProcessing = false // Ensure processing stops
         generationTask = nil
     }

     @MainActor
     private func handleComplete() {
         print("Completion stream finished. Final response snippet: \(String(messageResponse.prefix(100)))...")
         isProcessing = false // Mark processing as done
         generationTask = nil
         // sentenceQueue processing continues independently in PanelManager
     }

    @MainActor
    func stopProcessing() {
        generationTask?.cancel()
        generationTask = nil
        isProcessing = false // Immediately reflect stoppage
        // Clear the queue if needed, or let PanelManager handle it
        // Task { _ = await sentenceQueue.dequeueAll() } // Optional: Clear queue on explicit stop
        print("Completion processing stopped.")
    }
}
```

**8. Remove OllamaKit Dependency**

*   You will need to remove the `OllamaKit` package from your project dependencies.
*   In Xcode: Go to your Project Settings -> Package Dependencies, select `OllamaKit`, and click the minus (-) button.

**9. Update Info.plist (Optional but Recommended)**

*   Ensure `NSAppTransportSecurity` -> `NSAllowsArbitraryLoads` is set to `YES` *only if necessary*. It's better to specify allowed domains if possible, but since the Azure endpoint is user-configurable, allowing arbitrary loads might be required unless you implement more complex domain whitelisting. For Azure, `NSAllowsArbitraryLoads` is likely *not* needed as it uses HTTPS. You might be able to remove this key entirely if you only connect to HTTPS endpoints. Test thoroughly.
*   Keep `NSSpeechRecognitionUsageDescription` and `NSMicrophoneUsageDescription` for voice input.
*   Keep `NSAccessibilityUsageDescription` for the Completions Panel feature.

### How to use

1.  **Replace/Add Files:** Replace the content of existing files or add the new files (`AzureOpenAIService.swift`, `AzureChatRequestData.swift`, etc.) as specified above.
2.  **Update Project Dependencies:** Remove the `OllamaKit` package dependency in Xcode.
3.  **Configure Settings:** Launch the app, go to Settings, and enter your Azure OpenAI Endpoint and API Key. Add the names of your Azure deployments (e.g., "gpt-4o", "your-custom-deployment"). Select a default deployment.
4.  **Build and Run:** Compile and run the application.

### What changed & why

*   **Backend Service:** Replaced `OllamaService` with `AzureOpenAIService` to handle network requests specifically for Azure OpenAI, including authentication (API Key) and the correct API endpoint structure.
*   **Data Structures:** Introduced `AzureChatRequestData`, `AzureMessage`, `AzureChatResponseChunk`, etc., to match the JSON format required by the Azure OpenAI Chat Completions API, including support for image content.
*   **Model Representation:** Updated `LanguageModelSD` to store Azure deployment names and track the provider (`.azure`). Model loading (`LanguageModelStore`) now relies on manually added deployments from Settings rather than fetching tags from Ollama.
*   **Streaming Logic:** Modified `ConversationStore` and `CompletionsPanelVM` to use `URLSession` with an `SSEDelegate` (or `AsyncThrowingStream`) to handle the Server-Sent Events stream from Azure, parsing JSON chunks correctly. Replaced Combine-based stream handling with Swift Concurrency (`Task`, `AsyncThrowingStream`).
*   **Settings UI:** Revamped the Settings screen to remove Ollama configurations and add fields for Azure Endpoint, API Key, and management of Azure Deployment Names.
*   **Dependencies:** Removed the `OllamaKit` dependency as it's no longer needed.
*   **Image Handling:** Adapted the message construction to use Azure's specific format for including base64-encoded images within the `messages` array.

This provides a comprehensive switch to Azure OpenAI while maintaining the core chat and completions functionality. Remember to test thoroughly, especially the streaming responses and error handling.
