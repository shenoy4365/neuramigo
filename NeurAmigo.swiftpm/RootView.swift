// RootView.swift
// Top-level view that switches between authentication and main app content.

import SwiftUI

struct RootView: View {
    var authManager = AuthManager.shared

    var body: some View {
        Group {
            if authManager.isAuthenticated, let progressManager = authManager.progressManager {
                ContentView()
                    .environment(progressManager)
            } else {
                AuthView()
            }
        }
        .animation(.easeInOut(duration: 0.3), value: authManager.isAuthenticated)
    }
}

#Preview {
    RootView()
}
