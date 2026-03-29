// BrainIllustrationView.swift
// Decorative brain illustration drawn with SwiftUI shapes for the landing and dashboard views.

import SwiftUI

struct BrainIllustrationView: View {
    var body: some View {
        ZStack {
            // Background circle
            Circle()
                .fill(NeurAmigoTheme.cardBackground)
                .frame(width: 252, height: 252)

            // Outer ring
            Circle()
                .stroke(NeurAmigoTheme.accentBlue.opacity(0.3), lineWidth: 2)
                .frame(width: 280, height: 280)

            // Brain icon (larger)
            Image(systemName: "brain.head.profile")
                .font(.system(size: 110, weight: .thin))
                .foregroundStyle(
                    LinearGradient(
                        colors: [NeurAmigoTheme.primaryButton, NeurAmigoTheme.secondaryButton],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )

            // Decorative pulse ring
            Circle()
                .stroke(NeurAmigoTheme.accentBlue.opacity(0.15), lineWidth: 1)
                .frame(width: 300, height: 300)

            // Small accent icons
            Image(systemName: "waveform.path.ecg")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(NeurAmigoTheme.accentBlue)
                .offset(x: 133, y: -70)

            Image(systemName: "magnifyingglass")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(NeurAmigoTheme.primaryButton)
                .offset(x: -126, y: 77)

            Image(systemName: "cross.circle.fill")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(NeurAmigoTheme.accentBlue.opacity(0.7))
                .offset(x: 112, y: 91)
        }
        .frame(width: 280, height: 280)
    }
}

#Preview {
    BrainIllustrationView()
        .background(NeurAmigoTheme.primaryBackground)
}
