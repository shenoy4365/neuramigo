// AnatomyTab.swift
// Interactive brain anatomy view with color-coded regions showing where a disease affects the brain.

import SwiftUI

struct AnatomyTab: View {
    let content: AnatomyContent
    @State private var selectedRegion: Int? = nil

    // Color-coded region colors
    private let regionColors: [Color] = [
        Color(hex: "4CAF50"),  // Frontal Lobe - green
        Color(hex: "FF9800"),  // Temporal Lobe - orange
        Color(hex: "9C27B0"),  // Parietal Lobe - purple
        Color(hex: "F44336"),  // Occipital Lobe - red
        Color(hex: "2196F3"),  // Multiple / Deep - blue
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: NeurAmigoTheme.spacingL) {

                // Header
                Text(content.intro)
                    .font(NeurAmigoFont.headline)
                    .foregroundColor(NeurAmigoTheme.textPrimary)

                // Brain region visual
                brainVisual
                    .frame(maxWidth: .infinity)
                    .padding(NeurAmigoTheme.cardPadding)
                    .background(NeurAmigoTheme.cardBackground)
                    .cornerRadius(NeurAmigoTheme.cornerRadius)

                // Common Locations
                VStack(alignment: .leading, spacing: 12) {
                    Text("Common Locations")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    ForEach(content.commonLocations.indices, id: \.self) { i in
                        let loc = content.commonLocations[i]
                        let color = regionColors[i % regionColors.count]

                        Button {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                selectedRegion = (selectedRegion == i) ? nil : i
                            }
                        } label: {
                            HStack(spacing: 12) {
                                // Color dot
                                Circle()
                                    .fill(color)
                                    .frame(width: 14, height: 14)

                                VStack(alignment: .leading, spacing: 4) {
                                    HStack {
                                        Text(loc.region)
                                            .font(NeurAmigoFont.subheadline)
                                            .foregroundColor(NeurAmigoTheme.textPrimary)
                                        Spacer()
                                        Text(loc.percentage)
                                            .font(NeurAmigoFont.caption)
                                            .foregroundColor(NeurAmigoTheme.textSecondary)
                                    }

                                    Text(loc.description)
                                        .font(NeurAmigoFont.callout)
                                        .foregroundColor(NeurAmigoTheme.textSecondary)
                                        .multilineTextAlignment(.leading)
                                }
                            }
                            .padding(.leading, NeurAmigoTheme.cardPadding + 4)
                            .padding(.trailing, NeurAmigoTheme.cardPadding)
                            .padding(.vertical, NeurAmigoTheme.cardPadding)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(
                                HStack(spacing: 0) {
                                    Rectangle()
                                        .fill(color)
                                        .frame(width: 4)
                                    Spacer()
                                }
                            )
                            .background(selectedRegion == i ? color.opacity(0.1) : NeurAmigoTheme.cardBackground)
                            .clipShape(RoundedRectangle(cornerRadius: NeurAmigoTheme.cornerRadius))
                            .overlay(
                                RoundedRectangle(cornerRadius: NeurAmigoTheme.cornerRadius)
                                    .stroke(selectedRegion == i ? color : Color.clear, lineWidth: 1.5)
                            )
                        }
                        .buttonStyle(.plain)
                    }
                }

                // Characteristics
                VStack(alignment: .leading, spacing: 10) {
                    Text("Tumor Characteristics")
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    ForEach(content.characteristics, id: \.self) { item in
                        HStack(alignment: .top, spacing: 8) {
                            Text("•")
                                .foregroundColor(NeurAmigoTheme.accentBlue)
                            Text(item)
                                .font(NeurAmigoFont.callout)
                                .foregroundColor(NeurAmigoTheme.textPrimary)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                    }
                }
            }
            .padding(20)
            .padding(.bottom, 20)
        }
    }

    // MARK: - Brain Visual
    private var brainVisual: some View {
        VStack(spacing: 16) {
            ZStack {
                // Brain outline
                Image(systemName: "brain.head.profile")
                    .font(.system(size: 120, weight: .ultraLight))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [NeurAmigoTheme.primaryButton.opacity(0.6), NeurAmigoTheme.secondaryButton.opacity(0.4)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )

                // Color-coded region dots on the brain
                // Frontal (top-front)
                Circle()
                    .fill(regionColors[0].opacity(selectedRegion == 0 ? 1.0 : 0.5))
                    .frame(width: selectedRegion == 0 ? 28 : 20, height: selectedRegion == 0 ? 28 : 20)
                    .offset(x: -20, y: -30)

                // Temporal (side)
                Circle()
                    .fill(regionColors[1].opacity(selectedRegion == 1 ? 1.0 : 0.5))
                    .frame(width: selectedRegion == 1 ? 28 : 20, height: selectedRegion == 1 ? 28 : 20)
                    .offset(x: 25, y: 10)

                // Parietal (top)
                Circle()
                    .fill(regionColors[2].opacity(selectedRegion == 2 ? 1.0 : 0.5))
                    .frame(width: selectedRegion == 2 ? 28 : 20, height: selectedRegion == 2 ? 28 : 20)
                    .offset(x: -5, y: -50)

                // Occipital (back)
                Circle()
                    .fill(regionColors[3].opacity(selectedRegion == 3 ? 1.0 : 0.5))
                    .frame(width: selectedRegion == 3 ? 28 : 20, height: selectedRegion == 3 ? 28 : 20)
                    .offset(x: -35, y: 15)

                // Deep structures (center)
                Circle()
                    .fill(regionColors[4].opacity(selectedRegion == 4 ? 1.0 : 0.5))
                    .frame(width: selectedRegion == 4 ? 28 : 20, height: selectedRegion == 4 ? 28 : 20)
                    .offset(x: -5, y: -5)

                // Selected region label
                if let idx = selectedRegion, idx < content.commonLocations.count {
                    let color = regionColors[idx % regionColors.count]
                    VStack(spacing: 2) {
                        Text(content.commonLocations[idx].region)
                            .font(NeurAmigoFont.caption)
                            .foregroundColor(.white)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            .background(color)
                            .cornerRadius(8)

                        Text(content.commonLocations[idx].percentage)
                            .font(NeurAmigoFont.smallCaption)
                            .foregroundColor(NeurAmigoTheme.textSecondary)
                    }
                    .offset(y: 70)
                }
            }
            .frame(height: 200)
            .animation(.easeInOut(duration: 0.2), value: selectedRegion)

            // Legend (two rows to avoid overflow on smaller screens)
            VStack(spacing: 6) {
                HStack(spacing: 12) {
                    ForEach(0..<min(3, content.commonLocations.count), id: \.self) { i in
                        legendItem(index: i)
                    }
                }
                if content.commonLocations.count > 3 {
                    HStack(spacing: 12) {
                        ForEach(3..<min(content.commonLocations.count, regionColors.count), id: \.self) { i in
                            legendItem(index: i)
                        }
                    }
                }
            }

            Text("Tap a region below to highlight")
                .font(NeurAmigoFont.smallCaption)
                .foregroundColor(NeurAmigoTheme.textSecondary)
        }
    }

    private func legendItem(index i: Int) -> some View {
        HStack(spacing: 4) {
            Circle()
                .fill(regionColors[i])
                .frame(width: 8, height: 8)
            Text(shortName(for: content.commonLocations[i].region))
                .font(.system(size: 10))
                .foregroundColor(NeurAmigoTheme.textSecondary)
        }
    }

    private func shortName(for region: String) -> String {
        // Strip parenthetical content first, e.g. "Middle Cerebral Artery (MCA) Territory" → "Middle Cerebral Artery Territory"
        var cleaned = region
        while let open = cleaned.range(of: "("), let close = cleaned.range(of: ")", range: open.upperBound..<cleaned.endIndex) {
            cleaned.removeSubrange(open.lowerBound...close.lowerBound)
        }
        cleaned = cleaned.trimmingCharacters(in: .whitespaces)

        // If it has a slash, take the first part: "Parasagittal / Falcine" → "Parasagittal"
        if let slashRange = cleaned.range(of: "/") {
            cleaned = String(cleaned[cleaned.startIndex..<slashRange.lowerBound]).trimmingCharacters(in: .whitespaces)
        }

        // If short enough, use as-is
        if cleaned.count <= 14 { return cleaned }

        // Otherwise take the first two words
        let words = cleaned.split(separator: " ")
        if words.count >= 2 {
            return "\(words[0]) \(words[1])"
        }
        return String(cleaned.prefix(14))
    }
}

#Preview {
    AnatomyTab(content: DiseaseContent.glioblastoma.anatomy)
        .background(NeurAmigoTheme.primaryBackground)
}
