// ModuleDetailView.swift
// Tabbed detail view presenting the five learning sections for a single disease module.

import SwiftUI

struct ModuleDetailView: View {
    let disease: Disease
    let content: DiseaseContent
    @Environment(ProgressManager.self) var progressManager
    @Environment(\.dismiss) private var dismiss
    @State private var selectedTab: Int = 0
    @State private var showCompletionAlert = false

    private let tabTitles = ["Overview", "Risk Factors", "Symptoms", "Brain Anatomy", "Treatment"]

    var body: some View {
        VStack(spacing: 0) {
            // MARK: - Top Bar
            topBar
                .padding(.horizontal, 20)
                .padding(.top, 12)
                .padding(.bottom, 12)

            // MARK: - Tab Bar
            tabBar
                .padding(.bottom, 4)

            // MARK: - Tab Content
            TabView(selection: $selectedTab) {
                OverviewTab(content: content.overview)
                    .tag(0)
                RiskFactorsTab(content: content.riskFactors)
                    .tag(1)
                SymptomsTab(content: content.symptoms)
                    .tag(2)
                AnatomyTab(content: content.anatomy)
                    .tag(3)
                TreatmentTab(content: content.treatment)
                    .tag(4)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .onChange(of: selectedTab) { _, newTab in
                progressManager.viewTab(diseaseID: disease.id, tabIndex: newTab)
            }

            // MARK: - Bottom Navigation
            bottomNav
                .padding(.horizontal, 20)
                .padding(.vertical, 12)
        }
        .background(NeurAmigoTheme.primaryBackground)
        .navigationBarHidden(true)
        .onAppear {
            progressManager.viewTab(diseaseID: disease.id, tabIndex: 0)
        }
        .alert("Module Complete!", isPresented: $showCompletionAlert) {
            Button("Back to Modules") {
                dismiss()
            }
        } message: {
            Text("You've completed the \(disease.name) module. Great work!")
        }
    }

    // MARK: - Top Bar
    private var topBar: some View {
        ZStack {
            HStack(spacing: 8) {
                Image(systemName: "brain.head.profile")
                    .font(.system(size: 30, weight: .semibold))
                    .foregroundColor(NeurAmigoTheme.primaryButton)
                Text(disease.name)
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .foregroundColor(NeurAmigoTheme.textPrimary)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }

            HStack {
                Button { dismiss() } label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                }
                Spacer()
            }
        }
    }

    // MARK: - Tab Bar
    private var tabBar: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(tabTitles.indices, id: \.self) { index in
                        Button {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                selectedTab = index
                            }
                        } label: {
                            VStack(spacing: 6) {
                                Text(tabTitles[index])
                                    .font(NeurAmigoFont.caption)
                                    .foregroundColor(selectedTab == index ? .white : .white.opacity(0.6))
                                    .padding(.horizontal, 14)

                                Rectangle()
                                    .fill(selectedTab == index ? Color.white : Color.clear)
                                    .frame(height: 2)
                            }
                        }
                        .id(index)
                    }
                }
                .padding(.horizontal, 12)
            }
            .onChange(of: selectedTab) { _, newTab in
                withAnimation {
                    proxy.scrollTo(newTab, anchor: .center)
                }
            }
        }
        .frame(height: 44)
        .background(NeurAmigoTheme.primaryButton)
    }

    // MARK: - Bottom Navigation
    private var bottomNav: some View {
        HStack(spacing: 12) {
            // Previous button
            if selectedTab > 0 {
                Button {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        selectedTab -= 1
                    }
                } label: {
                    HStack(spacing: 4) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 14, weight: .semibold))
                        Text(tabTitles[selectedTab - 1])
                            .font(NeurAmigoFont.caption)
                    }
                    .foregroundColor(NeurAmigoTheme.primaryButton)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(NeurAmigoTheme.cardBackground)
                    .cornerRadius(NeurAmigoTheme.cornerRadius)
                }
            }

            // Next button OR Finish Lesson button
            if selectedTab < tabTitles.count - 1 {
                Button {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        selectedTab += 1
                    }
                } label: {
                    HStack(spacing: 4) {
                        Text("Next: \(tabTitles[selectedTab + 1])")
                            .font(NeurAmigoFont.caption)
                        Image(systemName: "chevron.right")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(NeurAmigoTheme.primaryButton)
                    .cornerRadius(NeurAmigoTheme.cornerRadius)
                }
            } else {
                // Finish Lesson button on last tab (same height as nav buttons)
                Button {
                    progressManager.completeModule(disease.id)
                    showCompletionAlert = true
                } label: {
                    HStack(spacing: 6) {
                        Image(systemName: "checkmark.circle.fill")
                            .font(.system(size: 14, weight: .semibold))
                        Text("Finish Lesson")
                            .font(NeurAmigoFont.caption)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                    .background(Color(hex: "3A8F6A"))
                    .cornerRadius(NeurAmigoTheme.cornerRadius)
                }
                .buttonStyle(BouncyButtonStyle())
            }
        }
    }
}

#Preview {
    ModuleDetailView(
        disease: DiseaseData.interactiveModules[0],
        content: .glioblastoma
    )
    .environment(ProgressManager(username: "preview"))
}
