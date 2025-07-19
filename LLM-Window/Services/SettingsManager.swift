//
//  SettingsManager.swift
//  LLM-Window
//
//  Purpose: Manages user settings persistence, validation, and secure storage operations.
//  This service provides centralized management for all application settings including
//  secure storage of API keys in the Keychain, UserDefaults management for preferences,
//  settings validation and sanitization, import/export functionality for backup and
//  sharing, and default settings initialization. It ensures settings are properly
//  persisted, validated, and securely handled throughout the application lifecycle.
//
//  Usage: Used by SettingsView for configuration UI interactions, throughout the app
//  to access current user preferences, by LLMService for API key retrieval, and
//  provides a clean interface for all settings-related operations across the application.
//

import Foundation
