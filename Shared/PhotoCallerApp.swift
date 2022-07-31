//
//  PhotoCallerApp.swift
//  Shared
//
//  Created by jph on 7/31/22.
//

import SwiftUI

@main
struct PhotoCallerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
