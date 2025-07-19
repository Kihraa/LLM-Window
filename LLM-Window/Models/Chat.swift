//
//  Chat.swift
//  LLM-Window
//
//  Purpose: SwiftData model representing individual chat conversations and sessions.
//  This model stores conversation metadata including creation timestamps, chat titles,
//  system prompts, selected LLM provider and model configurations, and conversation
//  settings. It serves as the container for message collections and maintains the
//  overall conversation context and configuration. Each Chat instance represents
//  a distinct conversation session with an LLM model.
//
//  Usage: Used by ContentView for chat list display and management, ChatView for
//  conversation context, and throughout the app for organizing and persisting
//  chat sessions. Will be enhanced to include relationships to Message objects
//  and additional conversation metadata as the application develops.
//
//  Created by Main on 05.07.2025.
//

import Foundation
import SwiftData

@Model
final class Chat {
    var timestamp: Date

    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
