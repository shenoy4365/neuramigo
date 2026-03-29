// SymptomsTab.swift
// Lists common and warning symptoms for a disease with a medical disclaimer.

import SwiftUI

struct SymptomsTab: View {
    let content: SymptomsContent

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: NeurAmigoTheme.spacingL) {

                // Disclaimer
                HStack(alignment: .top, spacing: 10) {
                    Image(systemName: "exclamationmark.triangle.fill")
                        .font(.system(size: 18))
                        .foregroundColor(Color(hex: "FFC107"))

                    Text(content.disclaimer)
                        .font(NeurAmigoFont.callout)
                        .fontWeight(.medium)
                        .foregroundColor(NeurAmigoTheme.textPrimary)
                        .lineSpacing(3)
                }
                .padding(NeurAmigoTheme.spacingM)
                .background(NeurAmigoTheme.warningBackground)
                .overlay(
                    RoundedRectangle(cornerRadius: NeurAmigoTheme.cornerRadius)
                        .stroke(NeurAmigoTheme.warningBorder, lineWidth: 1)
                )
                .cornerRadius(NeurAmigoTheme.cornerRadius)

                // Variability note
                Text(content.variabilityNote)
                    .font(NeurAmigoFont.body)
                    .foregroundColor(NeurAmigoTheme.textPrimary)
                    .lineSpacing(4)

                // Most Frequent Symptoms
                VStack(alignment: .leading, spacing: 12) {
                    Text("Most Frequent (>60% of patients)")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    ForEach(content.mostFrequent.indices, id: \.self) { i in
                        let symptom = content.mostFrequent[i]
                        symptomCard(symptom: symptom)
                    }
                }

                // Common Symptoms
                VStack(alignment: .leading, spacing: 10) {
                    Text("Common (30-60% of patients)")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    ForEach(content.common, id: \.self) { item in
                        HStack(alignment: .top, spacing: 8) {
                            Text("•")
                                .foregroundColor(NeurAmigoTheme.accentBlue)
                            Text(item)
                                .font(NeurAmigoFont.callout)
                                .foregroundColor(NeurAmigoTheme.textPrimary)
                        }
                    }
                }

                // Location-Specific
                VStack(alignment: .leading, spacing: 14) {
                    Text("Location-Specific Symptoms")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    ForEach(content.locationSpecific.indices, id: \.self) { i in
                        let loc = content.locationSpecific[i]
                        VStack(alignment: .leading, spacing: 4) {
                            Text(loc.location)
                                .font(NeurAmigoFont.body)
                                .fontWeight(.semibold)
                                .foregroundColor(NeurAmigoTheme.textPrimary)

                            Text(loc.symptoms)
                                .font(NeurAmigoFont.callout)
                                .foregroundColor(NeurAmigoTheme.textSecondary)
                                .lineSpacing(3)
                        }
                        .padding(14)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(NeurAmigoTheme.surfaceLight)
                        .cornerRadius(10)
                    }
                }
            }
            .padding(20)
            .padding(.bottom, 20)
        }
    }

    private func symptomCard(symptom: SymptomInfo) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 8) {
                Circle()
                    .fill(NeurAmigoTheme.accentBlue)
                    .frame(width: 10, height: 10)
                Text(symptom.name)
                    .font(NeurAmigoFont.subheadline)
                    .foregroundColor(NeurAmigoTheme.textPrimary)
            }

            ForEach(symptom.details, id: \.self) { detail in
                HStack(alignment: .top, spacing: 8) {
                    Text("•")
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                    Text(detail)
                        .font(NeurAmigoFont.callout)
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                }
            }
        }
        .padding(NeurAmigoTheme.cardPadding)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(NeurAmigoTheme.cardBackground)
        .overlay(
            HStack {
                Rectangle()
                    .fill(NeurAmigoTheme.accentBlue)
                    .frame(width: 4)
                Spacer()
            }
        )
        .cornerRadius(NeurAmigoTheme.cornerRadius)
    }
}

#Preview {
    SymptomsTab(content: DiseaseContent.glioblastoma.symptoms)
        .background(NeurAmigoTheme.primaryBackground)
}
