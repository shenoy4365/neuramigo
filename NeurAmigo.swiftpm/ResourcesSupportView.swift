// ResourcesSupportView.swift
// Resources page listing trusted organizations, clinical trials, and mental health support links.

import SwiftUI

struct ResourcesSupportView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var expandedSections: Set<String> = ["Trusted Organizations", "Clinical Trials", "Mental Health & Support", "Caregiver Resources"]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {

                // MARK: - Top Bar
                topBar
                    .padding(.bottom, NeurAmigoTheme.spacingL)

                // MARK: - Page Header
                VStack(alignment: .leading, spacing: 12) {
                    Text("Resources & Support")
                        .font(NeurAmigoFont.display)
                        .foregroundColor(NeurAmigoTheme.textPrimary)

                    Text("Helpful resources and trusted organizations for patients, caregivers, and anyone learning about brain health.\n**Please note:** NeurAmigo is for educational purposes only and does not provide medical advice — always consult a healthcare provider.")
                        .font(NeurAmigoFont.body)
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                        .lineSpacing(4)
                }
                .padding(.bottom, NeurAmigoTheme.spacingL)

                // MARK: - Trusted Organizations
                collapsibleSection(
                    icon: "building.columns.fill",
                    title: "Trusted Organizations",
                    items: organizations
                )

                // MARK: - Clinical Trials
                collapsibleSection(
                    icon: "flask.fill",
                    title: "Clinical Trials",
                    items: clinicalTrials
                )
                .padding(.top, NeurAmigoTheme.spacingL)

                // MARK: - Mental Health & Support
                collapsibleSection(
                    icon: "heart.fill",
                    title: "Mental Health & Support",
                    items: mentalHealthResources
                )
                .padding(.top, NeurAmigoTheme.spacingL)

                // MARK: - Caregiver Resources
                collapsibleSection(
                    icon: "person.2.fill",
                    title: "Caregiver Resources",
                    items: caregiverResources
                )
                .padding(.top, NeurAmigoTheme.spacingL)
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
            HStack(spacing: 8) {
                Image(systemName: "brain.head.profile")
                    .font(.system(size: 30, weight: .semibold))
                    .foregroundColor(NeurAmigoTheme.primaryButton)
                Text("NeurAmigo")
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .foregroundColor(NeurAmigoTheme.textPrimary)
            }

            HStack {
                Button { dismiss() } label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                }
                .buttonStyle(BouncyButtonStyle())
                Spacer()
            }
        }
    }

    // MARK: - Collapsible Section
    private func collapsibleSection(icon: String, title: String, items: [ResourceItem]) -> some View {
        VStack(alignment: .leading, spacing: 0) {
            // Section header with toggle
            Button {
                withAnimation(.spring(response: 0.35, dampingFraction: 0.85)) {
                    if expandedSections.contains(title) {
                        expandedSections.remove(title)
                    } else {
                        expandedSections.insert(title)
                    }
                }
            } label: {
                HStack(spacing: 10) {
                    Image(systemName: icon)
                        .font(.system(size: 18))
                        .foregroundColor(NeurAmigoTheme.primaryButton)
                    Text(title)
                        .font(NeurAmigoFont.headline)
                        .foregroundColor(NeurAmigoTheme.textPrimary)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                        .rotationEffect(.degrees(expandedSections.contains(title) ? 90 : 0))
                }
            }
            .buttonStyle(.plain)
            .padding(.bottom, expandedSections.contains(title) ? NeurAmigoTheme.spacingS : 0)

            // Cards — use VStack with fixed identity to avoid IOSurface issues
            VStack(spacing: 0) {
                if expandedSections.contains(title) {
                    ForEach(Array(items.enumerated()), id: \.element.name) { _, item in
                        resourceCard(item: item)
                    }
                }
            }
            .clipped()
        }
    }

    // MARK: - Resource Card
    private func resourceCard(item: ResourceItem) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 10) {
                Image(systemName: item.icon)
                    .font(.system(size: 20))
                    .foregroundColor(NeurAmigoTheme.primaryButton)
                    .frame(width: 28)

                Text(item.name)
                    .font(NeurAmigoFont.subheadline)
                    .foregroundColor(NeurAmigoTheme.textPrimary)
            }

            Text(item.description)
                .font(NeurAmigoFont.callout)
                .foregroundColor(NeurAmigoTheme.textSecondary)
                .fixedSize(horizontal: false, vertical: true)
                .lineSpacing(2)

            // Clickable link
            Link(destination: URL(string: "https://\(item.url)")!) {
                HStack(spacing: 4) {
                    Image(systemName: "link")
                        .font(.system(size: 12))
                    Text(item.url)
                        .font(NeurAmigoFont.smallCaption)
                        .lineLimit(1)
                    Image(systemName: "arrow.up.right.square")
                        .font(.system(size: 10))
                }
                .foregroundColor(NeurAmigoTheme.accentBlue)
            }
        }
        .padding(NeurAmigoTheme.cardPadding)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(NeurAmigoTheme.cardBackground)
        .cornerRadius(NeurAmigoTheme.cornerRadius)
        .padding(.bottom, NeurAmigoTheme.spacingS)
    }

    // MARK: - Data

    struct ResourceItem {
        let name: String
        let description: String
        let url: String
        let icon: String
    }

    private var organizations: [ResourceItem] {
        [
            ResourceItem(
                name: "National Brain Tumor Society",
                description: "Leading nonprofit dedicated to brain tumor research, advocacy, and patient support programs.",
                url: "braintumor.org",
                icon: "cross.circle.fill"
            ),
            ResourceItem(
                name: "American Brain Tumor Association",
                description: "Provides comprehensive brain tumor information, support services, and funds critical research.",
                url: "abta.org",
                icon: "staroflife.fill"
            ),
            ResourceItem(
                name: "National Institute of Neurological Disorders",
                description: "NIH institute conducting and funding research on brain and nervous system disorders.",
                url: "ninds.nih.gov",
                icon: "building.2.fill"
            ),
            ResourceItem(
                name: "World Health Organization (Brain Health)",
                description: "Global health authority with brain health initiatives, research guidelines, and disease classification standards.",
                url: "who.int/health-topics/brain-health",
                icon: "globe.americas.fill"
            )
        ]
    }

    private var clinicalTrials: [ResourceItem] {
        [
            ResourceItem(
                name: "ClinicalTrials.gov",
                description: "U.S. National Library of Medicine database of clinical studies. Search for brain tumor and neurological disease trials near you.",
                url: "clinicaltrials.gov",
                icon: "magnifyingglass.circle.fill"
            ),
            ResourceItem(
                name: "National Cancer Institute Trials",
                description: "NCI-supported clinical trials for brain cancers including glioblastoma, meningioma, and other tumors.",
                url: "cancer.gov/about-cancer/treatment/clinical-trials",
                icon: "list.bullet.clipboard.fill"
            )
        ]
    }

    private var mentalHealthResources: [ResourceItem] {
        [
            ResourceItem(
                name: "988 Suicide & Crisis Lifeline",
                description: "Free, confidential 24/7 support for people in distress. Call or text 988.",
                url: "988lifeline.org",
                icon: "phone.fill"
            ),
            ResourceItem(
                name: "NAMI (National Alliance on Mental Illness)",
                description: "Support groups, educational programs, and advocacy for individuals and families affected by mental illness.",
                url: "nami.org",
                icon: "heart.circle.fill"
            ),
            ResourceItem(
                name: "Brain & Behavior Research Foundation",
                description: "Funds research into mental health conditions and brain disorders, offering hope through science.",
                url: "bbrfoundation.org",
                icon: "lightbulb.fill"
            )
        ]
    }

    private var caregiverResources: [ResourceItem] {
        [
            ResourceItem(
                name: "Family Caregiver Alliance",
                description: "Information, services, and advocacy for family caregivers of adults with brain conditions.",
                url: "caregiver.org",
                icon: "hands.sparkles.fill"
            ),
            ResourceItem(
                name: "CaringBridge",
                description: "Free personal health journals to keep family and friends updated during a health journey.",
                url: "caringbridge.org",
                icon: "text.bubble.fill"
            )
        ]
    }
}

#Preview {
    NavigationStack {
        ResourcesSupportView()
    }
}
