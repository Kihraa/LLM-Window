//
//  Item.swift
//  LLM-Window
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
