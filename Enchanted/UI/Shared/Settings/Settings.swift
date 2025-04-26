//
//  Settings.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 28/12/2023.
//

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
    }
}

#Preview {
    Settings()
}
