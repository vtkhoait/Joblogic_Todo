//
//  Contact.swift
//  Todo
//
//  Created by  on 25/04/2022.
//

import Foundation

struct Contact : Decodable{
    var id: Int
    var name: String
    var number: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, number
    }
    
}
