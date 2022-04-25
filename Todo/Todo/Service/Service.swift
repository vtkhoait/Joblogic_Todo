//
//  Service.swift
//  Todo
//
//  Created by  on 26/04/2022.
//

import Foundation

protocol Service {
    func getProducts(urlString: String) async -> [Product]
    func getContact(urlString: String) async -> [Contact]
}
