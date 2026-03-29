// ActionCard.swift
// Reusable card component with an icon, title, and description used on the dashboard.

import SwiftUI

struct ActionCard: View {
    let icon: String
    let title: String
    let description: String

    var body: some View {
        HStack(spacing: NeurAmigoTheme.spacingM) {
            Image(systemName: icon)
                .font(.system(size: 32))
                .foregroundColor(NeurAmigoTheme.primaryButton)
                .frame(width: 40)

            VStack(alignment: .leading, spacing: NeurAmigoTheme.spacingXS) {
                Text(title)
                    .font(NeurAmigoFont.subheadline)
                    .foregroundColor(NeurAmigoTheme.textPrimary)

                Text(description)
                    .font(NeurAmigoFont.callout)
                    .foregroundColor(NeurAmigoTheme.textSecondary)
                    .lineLimit(2)
            }

            Spacer()

            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(NeurAmigoTheme.textSecondary)
        }
        .padding(NeurAmigoTheme.cardPadding)
        .frame(minHeight: 80)
        .background(NeurAmigoTheme.cardBackground)
        .cornerRadius(NeurAmigoTheme.cornerRadius)
        .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 2)
    }
}

#Preview {
    ActionCard(
        icon: "book.fill",
        title: "Interactive Learning",
        description: "15 essential brain diseases with 3D anatomy & education"
    )
    .padding()
    .background(NeurAmigoTheme.primaryBackground)
}
