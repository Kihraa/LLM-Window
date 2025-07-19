//
//  UserSettings.swift
//  LLM-Window
//
//  Purpose: Model for storing user preferences and application-wide settings.
//  This model manages all user-configurable options including default LLM provider
//  preferences, UI customization settings, API key references (stored securely in
//  Keychain), default conversation parameters, and application behavior preferences.
//  It provides a centralized location for all user settings that need to persist
//  across app sessions.
//
//  Usage: Used by SettingsView for configuration UI, SettingsManager for persistence,
//  and throughout the app to access user preferences for LLM parameters, UI themes,
//  and default behaviors.
//

import Foundation
import SwiftData

@Model
final class UserSettings {
    init() {
    }
}
