//
//  LLMService.swift
//  LLM-Window
//
//  Purpose: Main interface for LLM API interactions and service management.
//  This service provides a unified protocol and factory for interacting with different
//  LLM providers (OpenAI, Anthropic, Google, etc.). It abstracts provider-specific
//  implementation details, handles common operations like sending messages and receiving
//  responses, manages streaming responses, implements error handling and retry logic,
//  and provides a consistent interface for the UI layer to interact with any LLM provider.
//
//  Usage: Used by ChatView to send messages and receive responses, integrates with
//  APIManager for network operations, works with LLMProvider models for configuration,
//  and serves as the central point for all LLM API communications in the application.
//

import Foundation
