//
//  Taza_App.swift
//  Taza-App
//
//  Created by Seungsub Oh on 2/26/24.
//

import SwiftUI
import SwiftData

@main
struct Taza_App: App {
    var body: some Scene {
        let config = ModelConfiguration(isStoredInMemoryOnly: false)
        let container = try! ModelContainer(for: Article.self,
                                            TypingResult.self,
                                            configurations: config)
        
        return WindowGroup {
            ContentView()
        }
        .modelContainer(container)
    }
}
