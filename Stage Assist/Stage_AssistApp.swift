//
//  Stage_AssistApp.swift
//  Stage Assist
//
//  Created by Shawn Roller on 1/6/23.
//

import SwiftUI

@main
struct Stage_AssistApp: App {
    @State private var stageManagerOn = false
    private var icon: String {
        return stageManagerOn ? "tablecells.fill" : "tablecells"
    }
    
    var body: some Scene {
        MenuBarExtra(LocalizedStringKey(stringLiteral: "Stage Assist"), systemImage: icon) {
            VStack {
                Toggle("Use Stage Manager", isOn: $stageManagerOn)
                    .keyboardShortcut("s")
                Toggle("Auto Toggle - coming soon", isOn: .constant(false))
                    .disabled(true)
                Divider()
                Button("Quit") {
                    NSApplication.shared.terminate(nil)
                }.keyboardShortcut("q")
            }
        }
    }
}
