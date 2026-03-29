// DiseaseEncyclopediaView.swift
// Searchable encyclopedia listing all diseases with category filters and detail overlays.

import SwiftUI

struct DiseaseEncyclopediaView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var searchText = ""
    @State private var selectedCategory: DiseaseCategory? = nil
    @State private var selectedDisease: Disease? = nil
    @State private var showDetail = false

    private let allDiseases = DiseaseData.allDiseases

    var body: some View {
        ZStack {
            // MARK: - Main Content
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {

                    // Top Bar
                    topBar
                        .padding(.bottom, NeurAmigoTheme.spacingL)

                    // Page Header
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Disease Encyclopedia")
                            .font(NeurAmigoFont.display)
                            .foregroundColor(NeurAmigoTheme.textPrimary)

                        Text("Browse 33 brain conditions with descriptions, categories, and quick reference information.")
                            .font(NeurAmigoFont.body)
                            .foregroundColor(NeurAmigoTheme.textSecondary)
                            .lineSpacing(4)
                    }
                    .padding(.bottom, NeurAmigoTheme.spacingM)

                    // Search Bar
                    searchBar
                        .padding(.bottom, NeurAmigoTheme.spacingM)

                    // Category Filters
                    categoryFilters
                        .padding(.bottom, NeurAmigoTheme.spacingL)

                    // Results count
                    Text("\(filteredDiseases.count) condition\(filteredDiseases.count == 1 ? "" : "s")")
                        .font(NeurAmigoFont.caption)
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                        .padding(.bottom, NeurAmigoTheme.spacingS)

                    // Disease Cards
                    ForEach(filteredDiseases) { disease in
                        Button {
                            selectedDisease = disease
                            withAnimation(.spring(response: 0.35, dampingFraction: 0.85)) {
                                showDetail = true
                            }
                        } label: {
                            encyclopediaCard(disease: disease)
                        }
                        .buttonStyle(BouncyButtonStyle())
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .padding(.bottom, 40)
            }
            .background(NeurAmigoTheme.primaryBackground)
            .navigationBarHidden(true)

            // MARK: - Detail Overlay
            if showDetail, let disease = selectedDisease {
                detailOverlay(disease: disease)
            }
        }
    }

    // MARK: - Filtered Results
    private var filteredDiseases: [Disease] {
        var results = allDiseases

        // Filter by category
        if let category = selectedCategory {
            results = results.filter { $0.category == category }
        }

        // Filter by search text
        if !searchText.isEmpty {
            let query = searchText.lowercased()
            results = results.filter {
                $0.name.lowercased().contains(query) ||
                $0.shortDescription.lowercased().contains(query) ||
                $0.category.rawValue.lowercased().contains(query)
            }
        }

        return results
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

    // MARK: - Search Bar
    private var searchBar: some View {
        HStack(spacing: 10) {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 16))
                .foregroundColor(NeurAmigoTheme.textSecondary)

            TextField("Search diseases...", text: $searchText)
                .font(NeurAmigoFont.body)
                .foregroundColor(NeurAmigoTheme.textPrimary)
                .autocorrectionDisabled()

            if !searchText.isEmpty {
                Button {
                    searchText = ""
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 16))
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(NeurAmigoTheme.cardBackground)
        .cornerRadius(NeurAmigoTheme.cornerRadius)
    }

    // MARK: - Category Filters
    private var categoryFilters: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                // "All" chip
                filterChip(label: "All", isSelected: selectedCategory == nil) {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        selectedCategory = nil
                    }
                }

                ForEach(DiseaseCategory.allCases, id: \.self) { category in
                    filterChip(
                        label: shortCategoryName(category),
                        isSelected: selectedCategory == category
                    ) {
                        withAnimation(.easeInOut(duration: 0.2)) {
                            selectedCategory = (selectedCategory == category) ? nil : category
                        }
                    }
                }
            }
        }
    }

    private func filterChip(label: String, isSelected: Bool, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Text(label)
                .font(NeurAmigoFont.caption)
                .foregroundColor(isSelected ? .white : NeurAmigoTheme.textPrimary)
                .padding(.horizontal, 14)
                .padding(.vertical, 8)
                .background(isSelected ? NeurAmigoTheme.primaryButton : NeurAmigoTheme.cardBackground)
                .cornerRadius(20)
        }
    }

    private func shortCategoryName(_ category: DiseaseCategory) -> String {
        switch category {
        case .tumors: return "Tumors"
        case .neurodegenerative: return "Neurodegenerative"
        case .vascular: return "Vascular"
        case .autoimmune: return "Autoimmune"
        case .traumatic: return "Traumatic"
        case .developmental: return "Developmental"
        case .infectious: return "Infectious"
        }
    }

    // MARK: - Encyclopedia Card
    private func encyclopediaCard(disease: Disease) -> some View {
        HStack(spacing: 14) {
            // Brain icon with category color tint
            ZStack {
                Circle()
                    .fill(categoryColor(disease.category).opacity(0.15))
                    .frame(width: 48, height: 48)
                Image(systemName: categoryIcon(disease.category))
                    .font(.system(size: 20))
                    .foregroundColor(categoryColor(disease.category))
            }

            VStack(alignment: .leading, spacing: 4) {
                Text(disease.name)
                    .font(NeurAmigoFont.subheadline)
                    .foregroundColor(NeurAmigoTheme.textPrimary)
                    .lineLimit(1)

                Text(disease.shortDescription)
                    .font(NeurAmigoFont.callout)
                    .foregroundColor(NeurAmigoTheme.textSecondary)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
            }

            Spacer(minLength: 4)

            VStack(spacing: 4) {
                if disease.isInteractive {
                    Text("MODULE")
                        .font(.system(size: 9, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 6)
                        .padding(.vertical, 3)
                        .background(NeurAmigoTheme.primaryButton)
                        .cornerRadius(4)
                }
                Image(systemName: "chevron.right")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(NeurAmigoTheme.textSecondary)
            }
        }
        .padding(NeurAmigoTheme.cardPadding)
        .background(NeurAmigoTheme.cardBackground)
        .cornerRadius(NeurAmigoTheme.cornerRadius)
        .shadow(color: .black.opacity(0.04), radius: 6, x: 0, y: 2)
        .padding(.bottom, NeurAmigoTheme.spacingS)
    }

    // MARK: - Detail Overlay
    private func detailOverlay(disease: Disease) -> some View {
        ZStack {
            // Dimmed background
            Color.black.opacity(0.45)
                .ignoresSafeArea()
                .onTapGesture {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.85)) {
                        showDetail = false
                    }
                }

            // Modal card
            VStack(spacing: 0) {
                // Header with close button
                HStack {
                    Text(disease.category.rawValue)
                        .font(NeurAmigoFont.smallCaption)
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .background(categoryColor(disease.category))
                        .cornerRadius(8)

                    Spacer()

                    Button {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.85)) {
                            showDetail = false
                        }
                    } label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(NeurAmigoTheme.textSecondary)
                            .frame(width: 30, height: 30)
                            .background(NeurAmigoTheme.primaryBackground)
                            .clipShape(Circle())
                    }
                }
                .padding(.bottom, 16)

                // Brain illustration
                ZStack {
                    Circle()
                        .fill(categoryColor(disease.category).opacity(0.1))
                        .frame(width: 100, height: 100)
                    Image(systemName: "brain.head.profile")
                        .font(.system(size: 48, weight: .light))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [categoryColor(disease.category), categoryColor(disease.category).opacity(0.5)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                }
                .padding(.bottom, 16)

                // Disease name
                Text(disease.name)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .foregroundColor(NeurAmigoTheme.textPrimary)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 4)

                // Short description
                Text(disease.shortDescription)
                    .font(NeurAmigoFont.body)
                    .foregroundColor(NeurAmigoTheme.textSecondary)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)

                // Info rows
                Divider()
                    .padding(.bottom, 16)

                VStack(alignment: .leading, spacing: 12) {
                    detailRow(icon: "tag.fill", label: "Category", value: disease.category.rawValue)

                    if disease.isInteractive {
                        detailRow(icon: "clock.fill", label: "Est. Duration", value: "\(disease.estimatedDuration) min")
                    }

                    detailRow(icon: "info.circle.fill", label: "Type", value: disease.isInteractive ? "Interactive Module" : "Encyclopedia Entry")

                    // Extended description
                    detailRow(icon: "text.alignleft", label: "About", value: extendedDescription(for: disease))
                }
                .padding(.bottom, 20)

                // Action button
                if disease.isInteractive {
                    if let _ = DiseaseContentRegistry.content(for: disease.id) {
                        NavigationLink(value: AppDestination.module(disease.id)) {
                            HStack(spacing: 6) {
                                Image(systemName: "graduationcap.fill")
                                    .font(.system(size: 14))
                                Text("Interactive Module Available")
                                    .font(NeurAmigoFont.caption)
                            }
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 44)
                            .background(NeurAmigoTheme.primaryButton)
                            .cornerRadius(NeurAmigoTheme.cornerRadius)
                        }
                        .buttonStyle(BouncyButtonStyle())
                        .simultaneousGesture(TapGesture().onEnded {
                            showDetail = false
                        })
                    } else {
                        HStack(spacing: 6) {
                            Image(systemName: "lock.fill")
                                .font(.system(size: 12))
                            Text("Interactive module coming soon")
                                .font(NeurAmigoFont.caption)
                        }
                        .foregroundColor(NeurAmigoTheme.textSecondary)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(NeurAmigoTheme.primaryBackground)
                        .cornerRadius(NeurAmigoTheme.cornerRadius)
                    }
                } else {
                    HStack(spacing: 6) {
                        Image(systemName: "book.closed.fill")
                            .font(.system(size: 12))
                        Text("Encyclopedia reference only")
                            .font(NeurAmigoFont.caption)
                    }
                    .foregroundColor(NeurAmigoTheme.textSecondary)
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .background(NeurAmigoTheme.primaryBackground)
                    .cornerRadius(NeurAmigoTheme.cornerRadius)
                }
            }
            .padding(NeurAmigoTheme.cardPadding + 4)
            .background(NeurAmigoTheme.cardBackground)
            .cornerRadius(20)
            .shadow(color: .black.opacity(0.2), radius: 30, x: 0, y: 10)
            .padding(.horizontal, 24)
            .transition(.scale(scale: 0.9).combined(with: .opacity))
        }
    }

    // MARK: - Detail Row
    private func detailRow(icon: String, label: String, value: String) -> some View {
        HStack(alignment: .top, spacing: 10) {
            Image(systemName: icon)
                .font(.system(size: 14))
                .foregroundColor(NeurAmigoTheme.primaryButton)
                .frame(width: 20)
                .padding(.top, 2)

            VStack(alignment: .leading, spacing: 2) {
                Text(label)
                    .font(NeurAmigoFont.caption)
                    .foregroundColor(NeurAmigoTheme.textPrimary)
                Text(value)
                    .font(NeurAmigoFont.callout)
                    .foregroundColor(NeurAmigoTheme.textSecondary)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineSpacing(2)
            }
        }
    }

    // MARK: - Category Helpers
    private func categoryColor(_ category: DiseaseCategory) -> Color {
        switch category {
        case .tumors: return Color(hex: "E74C3C")
        case .neurodegenerative: return Color(hex: "9B59B6")
        case .vascular: return Color(hex: "3498DB")
        case .autoimmune: return Color(hex: "E67E22")
        case .traumatic: return Color(hex: "2ECC71")
        case .developmental: return Color(hex: "1ABC9C")
        case .infectious: return Color(hex: "F39C12")
        }
    }

    private func categoryIcon(_ category: DiseaseCategory) -> String {
        switch category {
        case .tumors: return "cross.circle.fill"
        case .neurodegenerative: return "brain.head.profile"
        case .vascular: return "heart.circle.fill"
        case .autoimmune: return "shield.lefthalf.filled"
        case .traumatic: return "bolt.circle.fill"
        case .developmental: return "figure.child.circle.fill"
        case .infectious: return "allergens"
        }
    }

    // MARK: - Extended Descriptions
    private func extendedDescription(for disease: Disease) -> String {
        switch disease.id {
        // Interactive modules — pull overview if available
        case "glioblastoma":
            return "Grade IV brain cancer arising from glial cells. The most aggressive primary brain tumor with rapid growth and infiltration into surrounding tissue. Requires multimodal treatment."
        case "meningioma":
            return "Tumors arising from the meninges, the protective membranes around the brain. Most are benign (WHO Grade I) and slow-growing, with excellent surgical outcomes."
        case "brain_metastases":
            return "Cancerous tumors that spread to the brain from other body sites, most commonly lung, breast, and melanoma. The most common type of brain tumor in adults."
        case "astrocytoma":
            return "Brain tumors from astrocytes (star-shaped glial cells). Range from slow-growing Grade II to aggressive Grade III. IDH mutation status is key for prognosis."
        case "oligodendroglioma":
            return "Rare tumors from oligodendrocytes (myelin-producing cells). Defined by 1p/19q codeletion, which confers exceptional treatment sensitivity and long survival."
        case "pituitary_adenoma":
            return "Benign tumors of the pituitary gland that can overproduce hormones or compress the optic nerves. Extremely common — found incidentally in up to 17% of people."
        case "alzheimers":
            return "The most common cause of dementia, characterized by amyloid plaques and tau tangles. Progressively destroys memory and cognitive function over years."
        case "parkinsons":
            return "Progressive movement disorder caused by loss of dopamine-producing neurons. Characterized by tremor, slowness, rigidity, and numerous non-motor symptoms."
        case "huntingtons":
            return "A hereditary neurodegenerative disease caused by a CAG repeat expansion in the HTT gene. Causes progressive motor, cognitive, and psychiatric deterioration."
        case "als":
            return "A progressive motor neuron disease that destroys nerve cells controlling voluntary muscles. Leads to loss of movement, speech, swallowing, and breathing."
        case "multiple_system_atrophy":
            return "A rare, progressive neurodegenerative disorder affecting autonomic functions, movement, and balance. Often mimics Parkinson's disease early on."
        case "ischemic_stroke":
            return "Occurs when a blood clot blocks an artery supplying the brain. Brain cells begin dying within minutes. Rapid treatment (tPA, thrombectomy) is critical."
        case "brain_aneurysm":
            return "A weak, bulging spot on a brain artery wall that can rupture, causing life-threatening subarachnoid hemorrhage. Many are found incidentally and monitored."
        case "multiple_sclerosis":
            return "An autoimmune disease where the immune system attacks myelin, the insulating coating on nerve fibers. Causes episodes of neurological symptoms with varying recovery."
        case "traumatic_brain_injury":
            return "Physical damage to brain tissue from external force (falls, accidents, sports). Ranges from mild concussion to severe, life-altering injury."
        // Encyclopedia-only diseases
        case "ependymoma":
            return "Tumors arising from ependymal cells lining the brain's ventricles and spinal cord central canal. More common in children. Treatment is primarily surgical."
        case "medulloblastoma":
            return "The most common malignant brain tumor in children, arising in the cerebellum. Classified into four molecular subgroups. Treated with surgery, radiation, and chemotherapy."
        case "frontotemporal_dementia":
            return "A group of dementias caused by progressive nerve cell loss in the frontal and temporal lobes. Primarily affects personality, behavior, and language rather than memory."
        case "lewy_body_dementia":
            return "The second most common type of progressive dementia after Alzheimer's. Characterized by protein deposits (Lewy bodies) that cause visual hallucinations and motor symptoms."
        case "hemorrhagic_stroke":
            return "Occurs when a weakened blood vessel ruptures and bleeds into the brain. Less common than ischemic stroke but more deadly. Requires emergency neurosurgical evaluation."
        case "avm":
            return "A congenital tangle of abnormal blood vessels connecting arteries and veins in the brain, bypassing normal capillaries. Risk of hemorrhage, seizures, and neurological deficits."
        case "cavernous_malformation":
            return "Clusters of abnormally formed blood vessels (cavernomas) that can leak blood and cause seizures, headaches, or neurological symptoms. Often discovered incidentally."
        case "encephalitis":
            return "Inflammation of the brain, most commonly caused by viral infections (herpes simplex, West Nile). Can also be autoimmune. Presents with fever, confusion, and seizures."
        case "neuromyelitis_optica":
            return "An autoimmune disorder primarily targeting the optic nerves and spinal cord. Causes episodes of vision loss and paralysis. Antibodies against aquaporin-4 are diagnostic."
        case "autoimmune_encephalitis":
            return "A group of conditions where the immune system produces antibodies against brain proteins. Causes psychiatric symptoms, seizures, and cognitive decline. Often treatable."
        case "concussion":
            return "A mild traumatic brain injury caused by a bump, blow, or jolt to the head. Causes temporary disruption of brain function. Most recover fully with rest within weeks."
        case "cte":
            return "A progressive brain disease linked to repeated head impacts, common in contact sports. Causes mood changes, cognitive decline, and behavioral problems. Only diagnosable post-mortem."
        case "hydrocephalus":
            return "Abnormal buildup of cerebrospinal fluid in the brain's ventricles, increasing pressure. Can be congenital or acquired. Treated with shunt placement or endoscopic surgery."
        case "chiari_malformation":
            return "A structural defect where brain tissue extends into the spinal canal due to a small or misshapen skull. Can cause headaches, balance problems, and spinal cord compression."
        case "cerebral_palsy":
            return "A group of permanent movement disorders appearing in early childhood. Caused by abnormal brain development or damage before, during, or shortly after birth."
        case "epilepsy":
            return "A neurological disorder characterized by recurrent, unprovoked seizures due to abnormal electrical activity in the brain. Affects about 1 in 26 people in their lifetime."
        case "brain_abscess":
            return "A localized collection of pus within the brain, usually caused by bacterial or fungal infection. Presents with headache, fever, and focal neurological deficits. Requires antibiotics and often surgical drainage."
        case "prion_diseases":
            return "Rare, fatal neurodegenerative diseases caused by misfolded prion proteins. Includes Creutzfeldt-Jakob disease (CJD). Characterized by rapid cognitive decline and death within months."
        default:
            return disease.shortDescription
        }
    }
}

#Preview {
    NavigationStack {
        DiseaseEncyclopediaView()
    }
}
