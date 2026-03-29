// ProgressRow.swift
// Single row displaying a disease module's name, category, and completion status.

import SwiftUI

struct ProgressRow: View {
    let disease: Disease
    let status: ModuleStatus

    enum ModuleStatus {
        case completed
        case inProgress
        case recommended
        case locked

        var label: String {
            switch self {
            case .completed: return "Completed"
            case .inProgress: return "In Progress"
            case .recommended: return "Up Next"
            case .locked: return "Locked"
            }
        }

        var color: Color {
            switch self {
            case .completed: return Color(hex: "27AE60")
            case .inProgress: return NeurAmigoTheme.accentBlue
            case .recommended: return NeurAmigoTheme.secondaryButton
            case .locked: return NeurAmigoTheme.textSecondary
            }
        }

        var icon: String {
            switch self {
            case .completed: return "checkmark.circle.fill"
            case .inProgress: return "arrow.triangle.2.circlepath"
            case .recommended: return "list.clipboard.fill"
            case .locked: return "lock.fill"
            }
        }
    }

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "brain.head.profile")
                .font(.system(size: 24))
                .foregroundColor(NeurAmigoTheme.primaryButton)
                .frame(width: 32)

            VStack(alignment: .leading, spacing: 2) {
                Text(disease.name)
                    .font(NeurAmigoFont.body)
                    .foregroundColor(NeurAmigoTheme.textPrimary)

                Text(disease.shortDescription)
                    .font(NeurAmigoFont.smallCaption)
                    .foregroundColor(NeurAmigoTheme.textSecondary)
                    .lineLimit(1)
            }

            Spacer()

            HStack(spacing: 4) {
                Image(systemName: status.icon)
                    .font(.system(size: 12))
                Text(status.label)
                    .font(NeurAmigoFont.caption)
            }
            .foregroundColor(status.color)
        }
        .padding(.vertical, 12)
        .padding(.horizontal, NeurAmigoTheme.cardPadding)
        .background(NeurAmigoTheme.cardBackground)
        .cornerRadius(NeurAmigoTheme.cornerRadius)
    }
}

#Preview {
    VStack(spacing: 8) {
        ProgressRow(
            disease: DiseaseData.interactiveModules[0],
            status: .recommended
        )
        ProgressRow(
            disease: DiseaseData.interactiveModules[1],
            status: .inProgress
        )
        ProgressRow(
            disease: DiseaseData.interactiveModules[2],
            status: .completed
        )
    }
    .padding()
    .background(NeurAmigoTheme.primaryBackground)
}
