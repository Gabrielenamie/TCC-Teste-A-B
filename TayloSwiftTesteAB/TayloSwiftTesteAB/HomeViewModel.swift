//
//  HomeViewModel.swift
//  TayloSwiftTesteAB
//
//  Created by Vitor Cheung on 30/08/23.
//

import Foundation
import SwiftUI

class HomeViewMode{
    
    let local = "http://localhost:8080/"
    let aws = "http://fnbs12-env.eba-hmcqfd2y.sa-east-1.elasticbeanstalk.com/"
    
    func fecthExperimentation() async -> Experimentation? {
        do{
            let data = try await RequestManeger.get(urlString:"\(local)AbList/3/3")
            if let data = data {
                var experimentation = ExperimentationFactory().generateExperimentation(data)
                if let experimentation = experimentation{
                    return experimentation
                }
            }
        } catch {
            print("Error")
        }
        return nil
    }
    
    func sendEvent(event: Event) async{
        await RequestManeger.send(urlString: "\(local)Analytics", event: event)
    }
    
    func getColluns() async -> [GridItem] {
        
        var colluns = [
            GridItem(.flexible(), spacing: 8, alignment: .top),
            GridItem(.flexible(), spacing: 8, alignment: .top)
        ]
        
        guard let features = await fecthExperimentation() else { return colluns}
        
        if features.getVariationValue(key: "colluns") == "3" {
            colluns = [
                GridItem(.flexible(), spacing: 8, alignment: .top),
                GridItem(.flexible(), spacing: 8, alignment: .top),
                GridItem(.flexible(), spacing: 8, alignment: .top)
            ]
        }
        
        return colluns
    }
    
    func getBackgroundColor() async -> Color {
        
        var color = Color.black
        
        guard let features = await fecthExperimentation() else { return color}
        
        if features.getVariationValue(key: "color") == "red" {
            color = .red
        }
        
        return color
    }
}
