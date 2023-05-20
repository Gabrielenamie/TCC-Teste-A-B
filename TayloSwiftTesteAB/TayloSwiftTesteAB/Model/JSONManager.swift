//
//  JSONManager.swift
//  TayloSwiftTesteAB
//
//  Created by Vitor Cheung on 19/05/23.
//

import Foundation

extension Encodable {
    func encodable() -> Data? {
        let encoder = JSONEncoder()
        let encoderData = try? encoder.encode(self)
        return encoderData
    }
}

extension Decodable {
    func decodable (data: Data) -> Self? {
        let decoder = JSONDecoder()
        let decoderData = try? decoder.decode(type(of: self), from: data)
        return decoderData
    }
}
