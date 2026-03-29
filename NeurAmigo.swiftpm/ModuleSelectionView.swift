// ModuleSelectionView.swift
// Grid view for browsing and selecting interactive disease learning modules.

import SwiftUI

struct ModuleSelectionView: View {
    @Environment(ProgressManager.self) var progressManager
    @Environment(\.dismiss) private var dismiss
    @State private var showLockedAlert = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {

                // MARK: - Top Bar (back + logo)
                topBar
                    .padding(.bottom, NeurAmigoTheme.spacingL)

                // MARK: - Page Header
                VStack(alignment: .leading, spacing: 12) {
                    Text("Interactive Self-Learning")
                        .font(NeurAmigoFont.display)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    Text("Complete these 15 core modules to build your brain health knowledge.")
                        .font(NeurAmigoFont.body)
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                        .lineSpacing(4)
                }
                .padding(.bottom, NeurAmigoTheme.spacingL)

                // MARK: - Module Sections
                ForEach(DiseaseData.moduleSections.indices, id: \.self) { sectionIndex in
                    let section = DiseaseData.moduleSections[sectionIndex]

                    // Section header
                    Text("Group \(sectionIndex + 1): \(section.title)")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)
                        .padding(.top, sectionIndex == 0 ? 0 : NeurAmigoTheme.spacingL)
                        .padding(.bottom, 12)

                    // Module cards
                    ForEach(section.ids, id: \.self) { diseaseId in
                        if let disease = DiseaseData.disease(for: diseaseId) {
                            let status = moduleStatus(for: diseaseId)

                            if status == .locked {
                                Button {
                                    showLockedAlert = true
                                } label: {
                                    ModuleCard(disease: disease, status: status)
                                }
                                .buttonStyle(BouncyButtonStyle())
                            } else {
                                NavigationLink(value: AppDestination.module(diseaseId)) {
                                    ModuleCard(disease: disease, status: status)
                                }
                                .buttonStyle(BouncyButtonStyle())
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            .padding(.bottom, 40)
        }
        .background(NeurAmigoTheme.primaryBackground)
        .navigationBarHidden(true)
        .alert("Module Locked", isPresented: $showLockedAlert) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("Complete previous modules to unlock this one.")
        }
    }

    // MARK: - Top Bar
    private var topBar: some View {
        ZStack {
            // Centered logo + title
            HStack(spacing: 8) {
                Image(systemName: "brain.head.profile")
                    .font(.system(size: 30, weight: .semibold))
                    .foregroundColor(NeurAmigoTheme.primaryButton)
                Text("NeurAmigo")
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .foregroundColor(NeurAmigoTheme.textPrimary)
            }

            // Back button pinned to leading edge
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                }
                Spacer()
            }
        }
    }

    // MARK: - Module Status
    private func moduleStatus(for id: String) -> ModuleCardStatus {
        if progressManager.isCompleted(id) {
            return .completed
        } else if progressManager.isInProgress(id) {
            return .inProgress
        } else if progressManager.isUnlocked(id) {
            return .available
        } else {
            return .locked
        }
    }
}

// MARK: - Module Card Status
enum ModuleCardStatus {
    case completed
    case inProgress
    case available
    case locked
}

// MARK: - Module Card
struct ModuleCard: View {
    let disease: Disease
    let status: ModuleCardStatus

    var body: some View {
        HStack(spacing: 14) {
            // Brain icon
            Image(systemName: "brain.head.profile")
                .font(.system(size: 28))
                .foregroundColor(status == .locked ? NeurAmigoTheme.textSecondary.opacity(0.4) : NeurAmigoTheme.primaryButton)
                .frame(width: 36)

            // Title + description
            VStack(alignment: .leading, spacing: NeurAmigoTheme.spacingXS) {
                Text(disease.name)
                    .font(NeurAmigoFont.subheadline)
                    .foregroundColor(status == .locked ? NeurAmigoTheme.textPrimary.opacity(0.5) : NeurAmigoTheme.textPrimary)

                Text(disease.shortDescription)
                    .font(NeurAmigoFont.callout)
                    .foregroundColor(status == .locked ? NeurAmigoTheme.textSecondary.opacity(0.5) : NeurAmigoTheme.textSecondary)
                    .fixedSize(horizontal: false, vertical: true)
            }

            Spacer(minLength: 8)

            // Status indicator + duration stacked
            VStack(spacing: 6) {
                statusIndicator

                Text(status == .locked ? "Locked" : "\(disease.estimatedDuration) min")
                    .font(NeurAmigoFont.smallCaption)
                    .foregroundColor(NeurAmigoTheme.textSecondary.opacity(status == .locked ? 0.5 : 0.8))
            }
            .frame(width: 75)
        }
        .padding(NeurAmigoTheme.cardPadding)
        .background(NeurAmigoTheme.cardBackground)
        .cornerRadius(NeurAmigoTheme.cornerRadius)
        .opacity(status == .locked ? 0.7 : 1.0)
        .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 2)
        .padding(.bottom, NeurAmigoTheme.spacingS)
    }

    @ViewBuilder
    private var statusIndicator: some View {
        switch status {
        case .completed:
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 22))
                .foregroundColor(Color(hex: "27AE60"))
        case .inProgress:
            Text("RESUME")
                .font(.system(size: 11, weight: .bold))
                .foregroundColor(.white)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(NeurAmigoTheme.accentBlue)
                .cornerRadius(6)
        case .available:
            HStack(spacing: 2) {
                Text("START")
                    .font(.system(size: 11, weight: .bold))
                Image(systemName: "arrow.right")
                    .font(.system(size: 10, weight: .bold))
            }
            .foregroundColor(.white)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(NeurAmigoTheme.primaryButton)
            .cornerRadius(6)
        case .locked:
            Image(systemName: "lock.fill")
                .font(.system(size: 16))
                .foregroundColor(NeurAmigoTheme.textSecondary.opacity(0.5))
        }
    }
}

#Preview {
    NavigationStack {
        ModuleSelectionView()
            .environment(ProgressManager(username: "preview"))
    }
}
