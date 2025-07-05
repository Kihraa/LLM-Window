//
//  ContentView.swift
//  LLM-Window
//
//  Created by Main on 05.07.2025.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var chats: [Chat]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(chats) { chat in
                    NavigationLink {
                        Text(
                            "Chat at \(chat.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))"
                        )
                    } label: {
                        Text(
                            chat.timestamp,
                            format: Date.FormatStyle(date: .numeric, time: .standard))
                    }
                }
                .onDelete(perform: deleteChats)
            }
            //.navigationSplitViewColumnWidth(min: 180, ideal: 200)
            .toolbar {
                ToolbarItem {
                    Button(action: addChat) {
                        Label("Add Chat", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select a chat")
        }
    }

    private func addChat() {
        withAnimation {
            let newChat = Chat(timestamp: Date())
            modelContext.insert(newChat)
        }
    }

    private func deleteChats(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(chats[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Chat.self, inMemory: true)
}
