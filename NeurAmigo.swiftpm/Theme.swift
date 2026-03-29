// Theme.swift
// Centralized color palette, typography, and spacing constants for the app.

import SwiftUI

// MARK: - Color Extension
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 6:
            (a, r, g, b) = (255, (int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = ((int >> 24) & 0xFF, (int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

// MARK: - NeurAmigo Theme
struct NeurAmigoTheme {
    // Backgrounds
    static let primaryBackground = Color(hex: "D4E4F7")
    static let cardBackground = Color(hex: "E8F1FA")
    static let surfaceLight = Color(hex: "F0F7FF")

    // Interactive elements
    static let primaryButton = Color(hex: "4A7BA7")
    static let secondaryButton = Color(hex: "2C4A6B")
    static let accentBlue = Color(hex: "5B9BD5")

    // Text
    static let textPrimary = Color(hex: "1F2D3D")
    static let textSecondary = Color(hex: "6E7B8B")

    // Brain region highlights
    static let frontalLobe = Color(hex: "A8D5E2")
    static let temporalLobe = Color(hex: "91C4E8")
    static let parietalLobe = Color(hex: "7BAFD4")
    static let occipitalLobe = Color(hex: "6495C1")
    static let cerebellum = Color(hex: "5B8AB8")

    // Semantic colors
    static let warningBackground = Color(hex: "FFF9E6")
    static let warningBorder = Color(hex: "FFC107")
    static let confirmedRisk = Color(hex: "E74C3C")
    static let unconfirmedRisk = Color(hex: "95A5A6")

    // Corner radius
    static let cornerRadius: CGFloat = 12

    // Spacing
    static let spacingXS: CGFloat = 4
    static let spacingS: CGFloat = 8
    static let spacingM: CGFloat = 16
    static let spacingL: CGFloat = 24
    static let spacingXL: CGFloat = 32

    static let cardPadding: CGFloat = 20
    static let buttonHeight: CGFloat = 56
}

// MARK: - Button Style
struct BouncyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.97 : 1.0)
            .animation(.spring(response: 0.2, dampingFraction: 0.6), value: configuration.isPressed)
    }
}

// MARK: - Typography
struct NeurAmigoFont {
    static let display = Font.system(size: 28, weight: .bold, design: .rounded)
    static let headline = Font.system(size: 20, weight: .semibold)
    static let subheadline = Font.system(size: 18, weight: .semibold)
    static let body = Font.system(size: 16, weight: .regular)
    static let callout = Font.system(size: 15, weight: .regular)
    static let caption = Font.system(size: 14, weight: .medium)
    static let smallCaption = Font.system(size: 12, weight: .regular)
}
