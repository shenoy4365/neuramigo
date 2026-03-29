// DashboardView.swift
// Main dashboard showing learning progress, navigation cards, and app destinations.

import SwiftUI

enum AppDestination: Hashable {
    case interactiveLearning
    case encyclopedia
    case resources
    case module(String) // disease ID
}

struct DashboardView: View {
    @Environment(ProgressManager.self) var progressManager

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {

                // MARK: - Top Bar (logo + sign out)
                topBar
                    .padding(.bottom, NeurAmigoTheme.spacingL)

                // MARK: - Header
                headerSection
                    .padding(.bottom, NeurAmigoTheme.spacingM)

                // MARK: - Action Cards
                actionCardsSection
                    .padding(.bottom, NeurAmigoTheme.spacingL)

                // MARK: - Learning Progress
                progressSection
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            .padding(.bottom, 40)
        }
        .background(NeurAmigoTheme.primaryBackground)
        .navigationBarHidden(true)
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

            // Sign out button pinned to trailing edge
            HStack {
                Spacer()
                Button {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        AuthManager.shared.signOut()
                    }
                } label: {
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                        .font(.system(size: 20))
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                }
                .buttonStyle(BouncyButtonStyle())
            }
        }
    }

    // MARK: - Header Section
    private var headerSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Welcome, \(AuthManager.shared.currentUsername ?? "")!")
                .font(NeurAmigoFont.display)
                .foregroundColor(NeurAmigoTheme.textPrimary)

            Text("Your educational companion for understanding brain health and neurological conditions.")
                .font(NeurAmigoFont.body)
                .foregroundColor(NeurAmigoTheme.textSecondary)
                .lineSpacing(4)
        }
    }

    // MARK: - Action Cards Section
    private var actionCardsSection: some View {
        VStack(spacing: NeurAmigoTheme.spacingM) {
            NavigationLink(value: AppDestination.interactiveLearning) {
                ActionCard(
                    icon: "graduationcap.fill",
                    title: "Interactive Learning",
                    description: "15 essential brain diseases with interactive education"
                )
            }
            .buttonStyle(BouncyButtonStyle())

            NavigationLink(value: AppDestination.encyclopedia) {
                ActionCard(
                    icon: "books.vertical.fill",
                    title: "Disease Encyclopedia",
                    description: "30+ brain conditions with comprehensive information"
                )
            }
            .buttonStyle(BouncyButtonStyle())

            NavigationLink(value: AppDestination.resources) {
                ActionCard(
                    icon: "link.circle.fill",
                    title: "Resources & Support",
                    description: "Clinical trials, support groups, & trusted sources"
                )
            }
            .buttonStyle(BouncyButtonStyle())
        }
    }

    // MARK: - Progress Section
    private var progressSection: some View {
        VStack(alignment: .leading, spacing: NeurAmigoTheme.spacingM) {
            Text("My Learning Progress")
                .font(NeurAmigoFont.headline)
                .foregroundColor(NeurAmigoTheme.textPrimary)

            ForEach(progressRows, id: \.disease.id) { row in
                NavigationLink(value: AppDestination.module(row.disease.id)) {
                    ProgressRow(disease: row.disease, status: row.status)
                }
                .buttonStyle(.plain)
            }

            // View all modules link
            NavigationLink(value: AppDestination.interactiveLearning) {
                HStack {
                    Text("View all available modules (\(completedCount)/15 done)")
                        .font(NeurAmigoFont.caption)
                        .foregroundColor(NeurAmigoTheme.accentBlue)
                    Spacer()
                    Image(systemName: "arrow.right.circle")
                        .font(.system(size: 16))
                        .foregroundColor(NeurAmigoTheme.accentBlue)
                }
                .padding(.top, NeurAmigoTheme.spacingS)
            }
        }
    }

    // MARK: - Computed Properties

    private var completedCount: Int {
        progressManager.progress.completedModules.count
    }

    private var progressRows: [(disease: Disease, status: ProgressRow.ModuleStatus)] {
        var rows: [(Disease, ProgressRow.ModuleStatus)] = []

        // 1. In-progress modules first (actively working on)
        for id in progressManager.progress.inProgressModules {
            if let disease = DiseaseData.disease(for: id) {
                rows.append((disease, .inProgress))
            }
        }

        // 2. Completed modules — most recent first (reversed order array)
        let recentCompleted = progressManager.progress.completedModulesOrder.reversed()
        for id in recentCompleted {
            if let disease = DiseaseData.disease(for: id) {
                rows.append((disease, .completed))
            }
        }

        // If we already have 2+ items, return the most recent 2
        if rows.count >= 2 {
            return Array(rows.prefix(2))
        }

        // 3. Fill remaining slots with recommended (unlocked, not started, not completed)
        let existingIDs = Set(rows.map { $0.0.id })
        let slotsNeeded = 2 - rows.count

        var recommended: [(Disease, ProgressRow.ModuleStatus)] = []
        for module in DiseaseData.interactiveModules {
            if recommended.count >= slotsNeeded { break }
            let id = module.id
            if existingIDs.contains(id) { continue }
            if progressManager.isCompleted(id) { continue }
            if progressManager.isInProgress(id) { continue }
            if progressManager.isUnlocked(id) {
                recommended.append((module, .recommended))
            }
        }

        // Insert recommended ABOVE completed cards
        let nonCompleted = rows.filter { $0.1 != .completed }
        let completed = rows.filter { $0.1 == .completed }

        // Merge: in-progress -> recommended -> completed
        let merged = nonCompleted + recommended + completed
        return Array(merged.prefix(2))
    }
}

#Preview {
    NavigationStack {
        DashboardView()
            .environment(ProgressManager(username: "preview"))
    }
}
