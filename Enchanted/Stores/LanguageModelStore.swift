//
//  ModelStore.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

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
