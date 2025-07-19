//
//  APIManager.swift
//  LLM-Window
//
//  Purpose: Low-level HTTP request handling and network communication management.
//  This service provides the fundamental networking layer for all API communications
//  with LLM providers. It handles URLSession configuration, request building and
//  authentication, response parsing utilities, comprehensive network error handling,
//  rate limiting implementation, and retry logic. It serves as the foundation layer
//  that LLMService implementations build upon for provider-specific API calls.
//
//  Usage: Used by LLMService for making HTTP requests to various LLM APIs, handles
//  authentication headers and API key management, manages request/response lifecycle,
//  and provides consistent error handling across all network operations.
//

import Foundation
