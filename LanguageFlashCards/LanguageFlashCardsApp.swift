//
//  LanguageFlashCardsApp.swift
//  LanguageFlashCards
//
//  Created by Otávio Zabaleta on 12/02/2022.
//

import SwiftUI

@main
struct LanguageFlashCardsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
