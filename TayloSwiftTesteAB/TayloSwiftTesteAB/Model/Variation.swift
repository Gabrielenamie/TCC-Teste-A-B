//
//  Variation.swift
//  TayloSwiftTesteAB
//
//  Created by Vitor Cheung on 19/05/23.
//

import Foundation

struct RequestData: Codable{
    var correlationID: String
    var data: Variation
    
    enum CodingKeys: CodingKey {
        case data
        case correlationID
    }
}

struct Variation: Codable{
    var id: Int
    var permission: Bool
    
    enum CodingKeys: CodingKey {
        case id
        case permission
    }
}
