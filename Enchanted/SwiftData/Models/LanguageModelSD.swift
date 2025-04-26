//
//  ModelSD.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 10/12/2023.
//

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
}

// MARK: - Helpers
extension LanguageModelSD {
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
extension LanguageModelSD: @unchecked Sendable {
    /// We hide compiler warnings for concurency. We have to make sure to modify the data only via SwiftDataManager to ensure concurrent operations.
}
