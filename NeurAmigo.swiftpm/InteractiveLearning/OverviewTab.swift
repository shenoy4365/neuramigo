// OverviewTab.swift
// Displays the "What is it?" description and key statistics for a disease.

import SwiftUI

struct OverviewTab: View {
    let content: OverviewContent

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: NeurAmigoTheme.spacingL) {

                // What is it?
                VStack(alignment: .leading, spacing: 12) {
                    Text("What is it?")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    ForEach(content.whatIsIt.indices, id: \.self) { i in
                        Text(content.whatIsIt[i])
                            .font(NeurAmigoFont.body)
                            .foregroundColor(NeurAmigoTheme.textPrimary)
                            .lineSpacing(4)
                    }
                }

                // Key Statistics
                VStack(alignment: .leading, spacing: 12) {
                    HStack(spacing: 8) {
                        Image(systemName: "chart.bar.fill")
                            .font(.system(size: 20))
                            .foregroundColor(NeurAmigoTheme.accentBlue)
                        Text("Key Statistics")
                            .font(NeurAmigoFont.subheadline)
                            .foregroundColor(NeurAmigoTheme.textPrimary)
                    }

                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(content.keyStatistics, id: \.self) { stat in
                            HStack(alignment: .top, spacing: 8) {
                                Text("•")
                                    .font(NeurAmigoFont.callout)
                                    .foregroundColor(NeurAmigoTheme.accentBlue)
                                Text(stat)
                                    .font(NeurAmigoFont.callout)
                                    .foregroundColor(NeurAmigoTheme.textPrimary)
                            }
                        }
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

                // How It Develops
                VStack(alignment: .leading, spacing: 12) {
                    HStack(spacing: 8) {
                        Image(systemName: "arrow.triangle.branch")
                            .font(.system(size: 20))
                            .foregroundColor(NeurAmigoTheme.accentBlue)
                        Text("How It Develops")
                            .font(NeurAmigoFont.subheadline)
                            .foregroundColor(NeurAmigoTheme.textPrimary)
                    }

                    Text(content.howItDevelops)
                        .font(NeurAmigoFont.body)
                        .foregroundColor(NeurAmigoTheme.textPrimary)
                        .lineSpacing(4)

                    ForEach(content.diseaseTypes.indices, id: \.self) { i in
                        let type = content.diseaseTypes[i]
                        VStack(alignment: .leading, spacing: 4) {
                            HStack {
                                Text(type.name)
                                    .font(NeurAmigoFont.body)
                                    .fontWeight(.semibold)
                                    .foregroundColor(NeurAmigoTheme.textPrimary)
                                Text("(\(type.percentage))")
                                    .font(NeurAmigoFont.caption)
                                    .foregroundColor(NeurAmigoTheme.textSecondary)
                            }
                            Text(type.description)
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
                .padding(NeurAmigoTheme.cardPadding)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(NeurAmigoTheme.cardBackground)
                .cornerRadius(NeurAmigoTheme.cornerRadius)
            }
            .padding(20)
            .padding(.bottom, 20)
        }
    }
}

#Preview {
    OverviewTab(content: DiseaseContent.glioblastoma.overview)
        .background(NeurAmigoTheme.primaryBackground)
}
