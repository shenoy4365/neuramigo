// TreatmentTab.swift
// Presents biomarkers, treatment phases, and clinical trial information for a disease.

import SwiftUI

struct TreatmentTab: View {
    let content: TreatmentContent
    @State private var expandedPhase: Int? = nil

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: NeurAmigoTheme.spacingL) {

                // Intro
                VStack(alignment: .leading, spacing: 8) {
                    Text("Understanding Biomarkers")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    Text(content.intro)
                        .font(NeurAmigoFont.body)
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                        .lineSpacing(4)
                }

                // Biomarker Cards
                ForEach(content.biomarkers.indices, id: \.self) { i in
                    let biomarker = content.biomarkers[i]
                    biomarkerCard(biomarker: biomarker)
                }

                // Treatment Timeline
                VStack(alignment: .leading, spacing: 16) {
                    Text("Standard Treatment Timeline")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    // Timeline dots
                    timelineDots

                    // Phase cards
                    ForEach(content.phases.indices, id: \.self) { i in
                        let phase = content.phases[i]
                        phaseCard(phase: phase, isExpanded: expandedPhase == i) {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                expandedPhase = (expandedPhase == i) ? nil : i
                            }
                        }
                    }
                }
            }
            .padding(20)
            .padding(.bottom, 20)
        }
    }

    // MARK: - Biomarker Card
    private func biomarkerCard(biomarker: BiomarkerInfo) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 8) {
                Image(systemName: "staroflife.fill")
                    .font(.system(size: 20))
                    .foregroundColor(NeurAmigoTheme.accentBlue)
                Text(biomarker.name)
                    .font(NeurAmigoFont.subheadline)
                    .foregroundColor(NeurAmigoTheme.textPrimary)
            }

            VStack(alignment: .leading, spacing: 8) {
                VStack(alignment: .leading, spacing: 2) {
                    Text("What it is:")
                        .font(NeurAmigoFont.caption)
                        .foregroundColor(NeurAmigoTheme.textPrimary)
                    Text(biomarker.whatItIs)
                        .font(NeurAmigoFont.callout)
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                        .lineSpacing(3)
                }

                VStack(alignment: .leading, spacing: 2) {
                    Text("Why it matters:")
                        .font(NeurAmigoFont.caption)
                        .foregroundColor(NeurAmigoTheme.textPrimary)
                    Text(biomarker.whyItMatters)
                        .font(NeurAmigoFont.callout)
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                        .lineSpacing(3)
                }

                Text("Prevalence: \(biomarker.prevalence)")
                    .font(NeurAmigoFont.smallCaption)
                    .foregroundColor(NeurAmigoTheme.textSecondary)
                    .italic()
            }
        }
        .padding(NeurAmigoTheme.cardPadding)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(NeurAmigoTheme.cardBackground)
        .overlay(
            RoundedRectangle(cornerRadius: NeurAmigoTheme.cornerRadius)
                .stroke(NeurAmigoTheme.accentBlue.opacity(0.2), lineWidth: 1)
        )
        .cornerRadius(NeurAmigoTheme.cornerRadius)
    }

    // MARK: - Timeline Dots
    private var timelineDots: some View {
        HStack(spacing: 0) {
            ForEach(content.phases.indices, id: \.self) { i in
                Circle()
                    .fill(NeurAmigoTheme.primaryButton)
                    .frame(width: 12, height: 12)

                if i < content.phases.count - 1 {
                    Rectangle()
                        .fill(NeurAmigoTheme.primaryButton.opacity(0.4))
                        .frame(height: 2)
                }
            }
        }
        .padding(.horizontal, 4)
    }

    // MARK: - Phase Card
    private func phaseCard(phase: TreatmentPhaseInfo, isExpanded: Bool, onTap: @escaping () -> Void) -> some View {
        Button(action: onTap) {
            VStack(alignment: .leading, spacing: 14) {
                // Header
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Phase \(phase.phaseNumber): \(phase.name)")
                            .font(NeurAmigoFont.subheadline)
                            .foregroundColor(NeurAmigoTheme.textPrimary)
                        Text(phase.timeline)
                            .font(NeurAmigoFont.caption)
                            .foregroundColor(NeurAmigoTheme.textSecondary)
                    }
                    Spacer()
                    Image(systemName: "chevron.down")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                        .rotationEffect(.degrees(isExpanded ? -180 : 0))
                }

                // Expanded content
                if isExpanded {
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 6) {
                            Text("What happens:")
                                .font(NeurAmigoFont.caption)
                                .foregroundColor(NeurAmigoTheme.textPrimary)
                            ForEach(phase.whatHappens, id: \.self) { item in
                                HStack(alignment: .top, spacing: 8) {
                                    Text("•")
                                        .foregroundColor(NeurAmigoTheme.accentBlue)
                                    Text(item)
                                        .font(NeurAmigoFont.callout)
                                        .foregroundColor(NeurAmigoTheme.textSecondary)
                                }
                            }
                        }

                        VStack(alignment: .leading, spacing: 6) {
                            Text("What to expect:")
                                .font(NeurAmigoFont.caption)
                                .foregroundColor(NeurAmigoTheme.textPrimary)
                            ForEach(phase.whatToExpect, id: \.self) { item in
                                HStack(alignment: .top, spacing: 8) {
                                    Text("•")
                                        .foregroundColor(NeurAmigoTheme.accentBlue)
                                    Text(item)
                                        .font(NeurAmigoFont.callout)
                                        .foregroundColor(NeurAmigoTheme.textSecondary)
                                }
                            }
                        }
                    }
                    .transition(.opacity.combined(with: .move(edge: .top)))
                }
            }
            .padding(NeurAmigoTheme.cardPadding)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(NeurAmigoTheme.cardBackground)
            .cornerRadius(NeurAmigoTheme.cornerRadius)
            .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 2)
            .clipped()
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    TreatmentTab(content: DiseaseContent.glioblastoma.treatment)
        .background(NeurAmigoTheme.primaryBackground)
}
