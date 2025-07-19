//
//  LLM_WindowApp.swift
//  LLM-Window
//
//  Purpose: Main application entry point and root configuration for the LLM-Window chat application.
//  This file defines the primary App structure that initializes the SwiftUI application lifecycle,
//  configures the SwiftData model container for persistent storage of chats and messages,
//  sets up the main window group with ContentView as the root view, and provides the shared
//  data model context that will be used throughout the application for database operations.
//
//  Usage: Automatically invoked by the system as the app's main entry point, establishes
//  the core application infrastructure, data persistence layer, and primary user interface.
//  All SwiftData operations throughout the app will use the model container configured here.
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
