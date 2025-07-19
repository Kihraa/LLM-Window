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
                            text: /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Value@*/.constant(
                                "") /*@END_MENU_TOKEN@*/)
							.cornerRadius(10)
                        Button(action: {}) {
                            Label("Send", systemImage: "paperplane")
                        }
//							.labelStyle(.iconOnly)
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
