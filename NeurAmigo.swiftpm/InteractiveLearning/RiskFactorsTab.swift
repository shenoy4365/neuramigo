// RiskFactorsTab.swift
// Shows age distribution, risk factor categories, and demographic data for a disease.

import SwiftUI

struct RiskFactorsTab: View {
    let content: RiskFactorsContent

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: NeurAmigoTheme.spacingL) {

                // Age Distribution
                VStack(alignment: .leading, spacing: 12) {
                    Text("Age Distribution")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    VStack(alignment: .leading, spacing: 12) {
                        Text("Peak age: \(content.peakAge)")
                            .font(NeurAmigoFont.caption)
                            .foregroundColor(NeurAmigoTheme.textSecondary)

                        ForEach(content.ageDistribution.indices, id: \.self) { i in
                            let group = content.ageDistribution[i]
                            HStack(spacing: 12) {
                                Text(group.range)
                                    .font(NeurAmigoFont.caption)
                                    .foregroundColor(NeurAmigoTheme.textPrimary)
                                    .frame(width: 44, alignment: .trailing)

                                GeometryReader { geo in
                                    ZStack(alignment: .leading) {
                                        RoundedRectangle(cornerRadius: 4)
                                            .fill(NeurAmigoTheme.accentBlue.opacity(0.2))
                                            .frame(height: 20)

                                        RoundedRectangle(cornerRadius: 4)
                                            .fill(NeurAmigoTheme.accentBlue)
                                            .frame(width: geo.size.width * CGFloat(group.percentage) / 100, height: 20)
                                    }
                                }
                                .frame(height: 20)

                                Text("\(group.percentage)%")
                                    .font(NeurAmigoFont.caption)
                                    .foregroundColor(NeurAmigoTheme.textPrimary)
                                    .frame(width: 36, alignment: .trailing)
                            }
                        }
                    }
                    .padding(NeurAmigoTheme.cardPadding)
                    .background(NeurAmigoTheme.cardBackground)
                    .cornerRadius(NeurAmigoTheme.cornerRadius)
                }

                // Gender Distribution
                VStack(alignment: .leading, spacing: 8) {
                    Text("Gender Distribution")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    HStack(alignment: .top, spacing: 8) {
                        Text("•")
                            .foregroundColor(NeurAmigoTheme.accentBlue)
                        Text("Males: \(content.genderMale)% of cases")
                            .font(NeurAmigoFont.callout)
                            .foregroundColor(NeurAmigoTheme.textPrimary)
                    }
                    HStack(alignment: .top, spacing: 8) {
                        Text("•")
                            .foregroundColor(NeurAmigoTheme.accentBlue)
                        Text("Females: \(content.genderFemale)% of cases")
                            .font(NeurAmigoFont.callout)
                            .foregroundColor(NeurAmigoTheme.textPrimary)
                    }
                    HStack(alignment: .top, spacing: 8) {
                        Text("•")
                            .foregroundColor(NeurAmigoTheme.accentBlue)
                        Text(content.genderExplanation)
                            .font(NeurAmigoFont.callout)
                            .foregroundColor(NeurAmigoTheme.textSecondary)
                    }
                }

                // Geographic Patterns
                VStack(alignment: .leading, spacing: 12) {
                    Text("Geographic Patterns")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    VStack(alignment: .leading, spacing: 14) {
                        Text("Higher incidence regions:")
                            .font(NeurAmigoFont.body)
                            .fontWeight(.semibold)
                            .foregroundColor(NeurAmigoTheme.textPrimary)

                        ForEach(content.geographicHigher.indices, id: \.self) { i in
                            let region = content.geographicHigher[i]
                            HStack(alignment: .top, spacing: 8) {
                                Text("•")
                                    .foregroundColor(NeurAmigoTheme.accentBlue)
                                Text("\(region.region) (\(region.rate))")
                                    .font(NeurAmigoFont.callout)
                                    .foregroundColor(NeurAmigoTheme.textPrimary)
                            }
                        }

                        Text("Lower incidence regions:")
                            .font(NeurAmigoFont.body)
                            .fontWeight(.semibold)
                            .foregroundColor(NeurAmigoTheme.textPrimary)
                            .padding(.top, 4)

                        ForEach(content.geographicLower.indices, id: \.self) { i in
                            let region = content.geographicLower[i]
                            HStack(alignment: .top, spacing: 8) {
                                Text("•")
                                    .foregroundColor(NeurAmigoTheme.accentBlue)
                                Text("\(region.region) (\(region.rate))")
                                    .font(NeurAmigoFont.callout)
                                    .foregroundColor(NeurAmigoTheme.textPrimary)
                            }
                        }

                        Text("Note: \(content.geographicNote)")
                            .font(NeurAmigoFont.smallCaption)
                            .foregroundColor(NeurAmigoTheme.textSecondary)
                            .italic()
                            .padding(.top, 4)
                    }
                    .padding(NeurAmigoTheme.cardPadding)
                    .background(NeurAmigoTheme.cardBackground)
                    .cornerRadius(NeurAmigoTheme.cornerRadius)
                }

                // Confirmed Risk Factors
                VStack(alignment: .leading, spacing: 10) {
                    Text("Known Risk Factors")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    riskCard(
                        title: "Confirmed Risk Factors",
                        items: content.confirmedRisks,
                        borderColor: NeurAmigoTheme.confirmedRisk
                    )

                    riskCard(
                        title: "Unconfirmed Factors",
                        items: content.unconfirmedFactors,
                        borderColor: NeurAmigoTheme.unconfirmedRisk
                    )
                }

                // Important Note
                VStack(alignment: .leading, spacing: 8) {
                    Text("Important Note")
                        .font(NeurAmigoFont.subheadline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    Text(content.importantNote)
                        .font(NeurAmigoFont.callout)
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                        .lineSpacing(3)
                }
            }
            .padding(20)
            .padding(.bottom, 20)
        }
    }

    private func riskCard(title: String, items: [String], borderColor: Color) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(NeurAmigoFont.subheadline)
                .foregroundColor(NeurAmigoTheme.textPrimary)

            ForEach(items, id: \.self) { item in
                HStack(alignment: .top, spacing: 8) {
                    Text("•")
                        .foregroundColor(borderColor)
                    Text(item)
                        .font(NeurAmigoFont.callout)
                        .foregroundColor(NeurAmigoTheme.textPrimary)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
        }
        .padding(NeurAmigoTheme.cardPadding)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(NeurAmigoTheme.cardBackground)
        .overlay(
            HStack {
                Rectangle()
                    .fill(borderColor)
                    .frame(width: 4)
                Spacer()
            }
        )
        .cornerRadius(NeurAmigoTheme.cornerRadius)
    }
}

#Preview {
    RiskFactorsTab(content: DiseaseContent.glioblastoma.riskFactors)
        .background(NeurAmigoTheme.primaryBackground)
}
