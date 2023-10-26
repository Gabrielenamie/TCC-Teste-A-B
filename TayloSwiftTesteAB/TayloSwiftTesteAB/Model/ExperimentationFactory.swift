//
//  JSONManager.swift
//  TayloSwiftTesteAB
//
//  Created by Vitor Cheung on 19/05/23.
//

import Foundation

class ExperimentationFactory {
    func generateExperimentation(_ data: Data) -> Experimentation? {
        do {
            let response = try JSONDecoder().decode(RequestData.self, from: data)
            let experimentation = response.data
            return experimentation
        } catch {
            print(error.localizedDescription)
            return nil
        }

    }
}
