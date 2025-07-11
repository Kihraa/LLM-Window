//
//  LLM_WindowApp.swift
//  LLM-Window
//
//  Created by Main on 05.07.2025.
//

import SwiftData
import SwiftUI

@main
struct LLM_WindowApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Chat.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
