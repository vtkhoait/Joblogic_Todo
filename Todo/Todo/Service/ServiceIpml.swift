//
//  ServiceIpml.swift
//  Todo
//
//  Created by  on 26/04/2022.
//

import Foundation

class ServiceIpml : Service {
    func getProducts(urlString: String) async -> [Product] {
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return []
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedResponse = try? JSONDecoder().decode([Product].self, from: data) {
                return decodedResponse
            }
        } catch {
            return []
        }
        return []
    }
    
    func getContact(urlString: String) async -> [Contact] {
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return []
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedResponse = try? JSONDecoder().decode([Contact].self, from: data) {
                return decodedResponse
            }
        } catch {
            return []
        }
        return []
    }
    
}
