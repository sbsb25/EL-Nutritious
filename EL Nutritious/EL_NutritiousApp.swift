//
//  EL_NutritiousApp.swift
//  EL Nutritious
//
//  Created by Shriyadita Bhilkar on 6/20/23.
//

import SwiftUI

@main
struct EL_NutritiousApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
        
}
