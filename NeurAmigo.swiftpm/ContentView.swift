// ContentView.swift
// Root view that switches between the landing page and the main navigation stack.

import SwiftUI

struct ContentView: View {
    @Environment(ProgressManager.self) var progressManager

    var hasSeenLanding: Bool {
        progressManager.progress.hasSeenLanding
    }

    var body: some View {
        Group {
            if hasSeenLanding {
                NavigationStack {
                    DashboardView()
                        .navigationDestination(for: AppDestination.self) { destination in
                            switch destination {
                            case .interactiveLearning:
                                ModuleSelectionView()
                            case .encyclopedia:
                                DiseaseEncyclopediaView()
                            case .resources:
                                ResourcesSupportView()
                            case .module(let id):
                                if let disease = DiseaseData.disease(for: id),
                                   let content = DiseaseContentRegistry.content(for: id) {
                                    ModuleDetailView(disease: disease, content: content)
                                } else {
                                    let name = DiseaseData.disease(for: id)?.name ?? id
                                    PlaceholderView(title: name)
                                }
                            }
                        }
                }
                .transition(.opacity)
            } else {
                NavigationStack {
                    LandingPageView(hasSeenLanding: Binding(
                        get: { progressManager.progress.hasSeenLanding },
                        set: { progressManager.progress.hasSeenLanding = $0 }
                    ))
                }
                .transition(.opacity)
            }
        }
        .animation(.easeInOut(duration: 0.3), value: hasSeenLanding)
    }
}

struct PlaceholderView: View {
    let title: String

    var body: some View {
        ZStack {
            NeurAmigoTheme.primaryBackground
                .ignoresSafeArea()
            VStack(spacing: 12) {
                Image(systemName: "hammer.fill")
                    .font(.system(size: 40))
                    .foregroundColor(NeurAmigoTheme.textSecondary)
                Text(title)
                    .font(NeurAmigoFont.headline)
                    .foregroundColor(NeurAmigoTheme.textPrimary)
                Text("Coming soon")
                    .font(NeurAmigoFont.callout)
                    .foregroundColor(NeurAmigoTheme.textSecondary)
            }
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView()
        .environment(ProgressManager(username: "preview"))
}
