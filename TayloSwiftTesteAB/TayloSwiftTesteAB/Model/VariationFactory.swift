//
//  JSONManager.swift
//  TayloSwiftTesteAB
//
//  Created by Vitor Cheung on 19/05/23.
//

import Foundation

class VariationFactory {
    func generateVariation(_ data: Data) -> Variation? {
        do {
            let response = try JSONDecoder().decode(RequestData.self, from: data)
            let variation = response.data
            return variation
        } catch {
            print(error.localizedDescription)
            return nil
        }

    }
}
