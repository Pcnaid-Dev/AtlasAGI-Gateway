//
//  SettingsView.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 11/12/2023.
//

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
