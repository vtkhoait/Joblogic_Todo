//
//  Product.swift
//  Todo
//
//  Created by  on 25/04/2022.
//

import Foundation

struct Product: Decodable {
    
    var id: Int
    var name: String
    var price: Int
    var quantity: Int
    var type: Int
    
    enum CodingKeys: String, CodingKey {
        case id, name, price, quantity, type
    }
}
