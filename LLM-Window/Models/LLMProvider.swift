//
//  LLMProvider.swift
//  LLM-Window
//
//  Purpose: Model representing different LLM service providers and their configurations.
//  This model defines the structure for various LLM APIs (OpenAI, Anthropic, Google, etc.)
//  including their endpoints, available models, authentication requirements, and
//  service-specific parameters. It provides a unified interface to abstract the
//  differences between various LLM providers and their API specifications.
//
//  Usage: Used to configure and manage different LLM services, store provider
//  settings, validate API configurations, and provide a consistent interface
//  for the LLMService to interact with multiple LLM providers.
//

import Foundation
import SwiftData

@Model
final class LLMProvider {
    init() {
    }
}
