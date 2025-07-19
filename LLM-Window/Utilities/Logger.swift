//
//  Logger.swift
//  LLM-Window
//
//  Purpose: Centralized logging utility for debugging, monitoring, and error tracking throughout the application.
//  This utility provides a unified logging interface that supports different log levels (debug, info, warning, error),
//  structured logging with categories, file and console output options, and filtering capabilities for development
//  and production environments. It helps with debugging LLM API interactions, tracking user actions, monitoring
//  performance, and maintaining audit trails for troubleshooting and analysis.
//
//  Usage: Used throughout the app for logging API requests/responses, user interactions, error conditions,
//  performance metrics, and debugging information. Provides consistent logging format and helps with
//  diagnosing issues in both development and production environments.
//

import Foundation
import os.log
