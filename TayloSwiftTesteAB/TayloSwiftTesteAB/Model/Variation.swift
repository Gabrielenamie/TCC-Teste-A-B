//
//  Variation.swift
//  TayloSwiftTesteAB
//
//  Created by Vitor Cheung on 19/05/23.
//

import Foundation

struct RequestData: Codable{
    var data: Experimentation
    
    enum CodingKeys: CodingKey {
        case data
    }
}

struct Experimentation: Codable{
    var id: Int
    var features: [Variation]
    
    func getVariationValue(key: String) -> String{
        return features.first { va in
            va.key == key
        }?.value ?? ""
    }
    
    enum CodingKeys: CodingKey {
        case id
        case features
    }
}

struct Variation: Codable{
    var key: String
    var value: String
    
    enum CodingKeys: CodingKey {
        case key
        case value
    }
}
