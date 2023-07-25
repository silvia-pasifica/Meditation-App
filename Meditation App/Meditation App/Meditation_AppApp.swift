//
//  Meditation_AppApp.swift
//  Meditation App
//
//  Created by Silvia Pasica on 22/07/23.
//

import SwiftUI

@main
struct Meditation_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
