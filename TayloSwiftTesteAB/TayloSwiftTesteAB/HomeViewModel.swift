//
//  HomeViewModel.swift
//  TayloSwiftTesteAB
//
//  Created by Vitor Cheung on 30/08/23.
//

import Foundation
class HomeViewMode{
    func fecthExperimentation() async -> Bool{
        do{
            let data = try await RequestManeger.get(urlString:"http://localhost:5145/AbList/2/1")
            if let data = data {
                var variation = VariationFactory().generateVariation(data)
                if let variation = variation{
                    return variation.permission
                }
            }
        } catch {
            print("Error")
        }
        return false
    }
    
    func sendEvent(event: Event) async{
        await RequestManeger.send(urlString: "http://localhost:5145/Analytics", event: event)
    }
}
