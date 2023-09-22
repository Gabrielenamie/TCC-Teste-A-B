//
//  RequestManeger.swift
//  TayloSwiftTesteAB
//
//  Created by Vitor Cheung on 01/08/23.
//

import Foundation
class RequestManeger{
    @Sendable static func get(urlString: String) async throws -> Data?{
         do {
            guard let url = URL(string: urlString) else { return nil}
            let request = URLRequest(url: url)
            let (data, response) = try await URLSession.shared.data(for: request)
             let json = try JSONSerialization.jsonObject( with: data, options: [] )
             print("dados: \(json) response: \(response)")
            return data
         } catch {
             print(error.localizedDescription)
             return nil
         }

    }
    
    @Sendable static func send(urlString: String, event: Event) async {
        do {
            guard let url = URL(string: urlString) else { return }
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
             
            // Set HTTP Request Body
            request.setValue("*/*", forHTTPHeaderField: "Accept")
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpBody = try JSONEncoder().encode(event)
            // Perform HTTP Request
            let (data, response) = try await URLSession.shared.data(for: request)
            let json = try JSONSerialization.jsonObject( with: data, options: [] )
            print("data: \(json) response: \(response)")
        } catch {
            print(error.localizedDescription)
        }
    }
}
