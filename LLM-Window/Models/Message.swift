//
//  Message.swift
//  LLM-Window
//
//  Purpose: Core data model for individual chat messages within conversations.
//  This model represents a single message exchange in a chat, storing the content,
//  sender role (user, assistant, or system), timing information, and optional
//  metadata such as token usage and processing metrics. Each message belongs to
//  a parent Chat and together they form the conversation history.
//
//  Usage: Used by SwiftData to persist chat messages, displayed in ChatView
//  as MessageBubbleView components, and sent to/received from LLM APIs.
//

import Foundation
import SwiftData

@Model
final class Message {
    init() {
    }
}
