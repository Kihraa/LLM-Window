//
//  ContentView.swift
//  LLM-Window
//
//  Purpose: Main user interface view providing the primary navigation and chat management interface.
//  This view implements a NavigationSplitView layout with a sidebar for chat list management and
//  a detail pane for conversation display. It handles chat creation, deletion, and selection,
//  manages the SwiftData integration for persistent storage, and provides the foundation for
//  the chat application's user experience. The sidebar displays all saved conversations while
//  the detail pane shows the selected chat interface with message history and input controls.
//
//  Usage: Serves as the root view of the application, displayed immediately after app launch.
//  Integrates with SwiftData for chat persistence, will be enhanced to work with ChatView
//  for detailed conversation management, and provides the main navigation structure for
//  the entire LLM chat application.
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
            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
            .toolbar(content: {
                ToolbarItem {
                    Button(action: addChat) {
                        Label("Add Chat", systemImage: "plus")
                    }
                }
            })
        } detail: {
            VSplitView {

                ScrollView {

                }

                VStack {
                    Divider()
                    HStack {
                        TextField(
                            "Enter message",
                            text: .constant("")
                        )
                        .cornerRadius(10)
                        Button(action: {}) {
                            Label("Send", systemImage: "paperplane")
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .padding()
                }
            }

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
