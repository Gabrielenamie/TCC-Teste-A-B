//
//  TayloSwiftTesteABApp.swift
//  TayloSwiftTesteAB
//
//  Created by Gabriele Namie on 19/05/23.
//

import SwiftUI

@main
struct TayloSwiftTesteABApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
