//
//  Keychain.swift
//  LLM-Window
//
//  Purpose: Secure storage wrapper for sensitive data like API keys using the system Keychain.
//  This utility provides a simplified interface for storing, retrieving, updating, and deleting
//  sensitive information such as LLM provider API keys in the macOS Keychain. It handles all
//  the low-level Keychain Services API interactions and provides error handling, ensuring
//  that sensitive data is stored securely and follows Apple's security best practices.
//
//  Usage: Used by SettingsManager to securely store and retrieve API keys, by LLMService
//  to access stored credentials for API authentication, and throughout the app wherever
//  secure storage of sensitive information is required.
//

import Foundation
import Security
