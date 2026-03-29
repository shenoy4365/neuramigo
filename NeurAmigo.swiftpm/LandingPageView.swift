// LandingPageView.swift
// Welcome screen shown on first launch before entering the dashboard.

import SwiftUI

struct LandingPageView: View {
    @Binding var hasSeenLanding: Bool

    var body: some View {
        ZStack {
            NeurAmigoTheme.primaryBackground
                .ignoresSafeArea()

            VStack(spacing: NeurAmigoTheme.spacingXL) {
                Spacer().frame(maxHeight: 60)

                // Brain illustration (centered, scaled up)
                BrainIllustrationView()

                // Title + subtitle
                VStack(spacing: 12) {
                    Text("Welcome to NeurAmigo")
                        .font(NeurAmigoFont.display)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    Text("NeurAmigo is an accessible educational app that allows you to expand your knowledge of brain health and neurological/neurodegenerative conditions. Tap below to learn about 15+ brain diseases through interactive modules!")
                        .font(NeurAmigoFont.body)
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                        .multilineTextAlignment(.center)
                        .lineSpacing(4)
                        .padding(.horizontal, 20)
                }

                Spacer().frame(maxHeight: 24)

                // Single Get Started button
                Button {
                    hasSeenLanding = true
                } label: {
                    Text("Get Started with NeurAmigo")
                        .font(NeurAmigoFont.subheadline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: NeurAmigoTheme.buttonHeight)
                        .background(NeurAmigoTheme.primaryButton)
                        .cornerRadius(NeurAmigoTheme.cornerRadius)
                }
                .buttonStyle(BouncyButtonStyle())
                .padding(.horizontal, 20)
                .padding(.bottom, 40)
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    NavigationStack {
        LandingPageView(hasSeenLanding: .constant(false))
    }
}
