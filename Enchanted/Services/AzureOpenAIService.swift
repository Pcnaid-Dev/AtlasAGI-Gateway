//
//  AzureOpenAIService.swift
//  Enchanted
//
//  Created by Manus Agent on 26/04/2025.
//

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
