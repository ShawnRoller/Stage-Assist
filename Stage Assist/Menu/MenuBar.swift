//
//  MenuBar.swift
//  Stage Assist
//
//  Created by Shawn Roller on 1/6/23.
//

import SwiftUI

struct MenuBar: View {
    @State private var stageManagerOn = false
    
    var body: some View {
        VStack {
            Toggle("Use Stage Manager", isOn: $stageManagerOn)
            Divider()
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }
        }
    }
}
