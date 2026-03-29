// DiseaseModels.swift
// Data models for diseases, categories, and the static disease catalog.

import Foundation

// MARK: - Disease Category
enum DiseaseCategory: String, Codable, CaseIterable {
    case tumors = "Tumors & Cancer"
    case neurodegenerative = "Neurodegenerative"
    case vascular = "Vascular"
    case autoimmune = "Autoimmune & Inflammatory"
    case traumatic = "Traumatic"
    case developmental = "Developmental & Structural"
    case infectious = "Infectious"
}

// MARK: - Disease (lightweight reference for lists)
struct Disease: Identifiable, Codable {
    let id: String
    let name: String
    let shortDescription: String
    let category: DiseaseCategory
    let estimatedDuration: Int
    let isInteractive: Bool
}

// MARK: - Static Disease Data
struct DiseaseData {

    // MARK: - Interactive Modules (15)
    static let interactiveModules: [Disease] = [
        // Tumors & Cancer (6)
        Disease(id: "glioblastoma", name: "Glioblastoma", shortDescription: "Most common malignant brain tumor", category: .tumors, estimatedDuration: 8, isInteractive: true),
        Disease(id: "meningioma", name: "Meningioma", shortDescription: "Usually benign, slow-growing tumor", category: .tumors, estimatedDuration: 6, isInteractive: true),
        Disease(id: "brain_metastases", name: "Brain Metastases", shortDescription: "Cancer spread from other organs", category: .tumors, estimatedDuration: 7, isInteractive: true),
        Disease(id: "astrocytoma", name: "Astrocytoma", shortDescription: "Glial cell tumors of varying severity", category: .tumors, estimatedDuration: 9, isInteractive: true),
        Disease(id: "oligodendroglioma", name: "Oligodendroglioma", shortDescription: "Rare, often treatable brain tumor", category: .tumors, estimatedDuration: 6, isInteractive: true),
        Disease(id: "pituitary_adenoma", name: "Pituitary Adenoma", shortDescription: "Benign tumor of pituitary gland", category: .tumors, estimatedDuration: 5, isInteractive: true),

        // Neurodegenerative (5)
        Disease(id: "alzheimers", name: "Alzheimer's Disease", shortDescription: "Progressive memory loss & dementia", category: .neurodegenerative, estimatedDuration: 7, isInteractive: true),
        Disease(id: "parkinsons", name: "Parkinson's Disease", shortDescription: "Movement disorder affecting dopamine", category: .neurodegenerative, estimatedDuration: 7, isInteractive: true),
        Disease(id: "huntingtons", name: "Huntington's Disease", shortDescription: "Genetic disorder causing brain degeneration", category: .neurodegenerative, estimatedDuration: 6, isInteractive: true),
        Disease(id: "als", name: "ALS (Lou Gehrig's)", shortDescription: "Motor neuron disease", category: .neurodegenerative, estimatedDuration: 6, isInteractive: true),
        Disease(id: "multiple_system_atrophy", name: "Multiple System Atrophy", shortDescription: "Rare progressive neurological disorder", category: .neurodegenerative, estimatedDuration: 5, isInteractive: true),

        // Vascular & Other (4)
        Disease(id: "ischemic_stroke", name: "Ischemic Stroke", shortDescription: "Blood clot blocking brain blood flow", category: .vascular, estimatedDuration: 7, isInteractive: true),
        Disease(id: "brain_aneurysm", name: "Brain Aneurysm", shortDescription: "Weakened blood vessel in brain", category: .vascular, estimatedDuration: 6, isInteractive: true),
        Disease(id: "multiple_sclerosis", name: "Multiple Sclerosis", shortDescription: "Autoimmune disease affecting myelin", category: .autoimmune, estimatedDuration: 8, isInteractive: true),
        Disease(id: "traumatic_brain_injury", name: "Traumatic Brain Injury", shortDescription: "Physical damage to brain tissue", category: .traumatic, estimatedDuration: 6, isInteractive: true),
    ]

    // MARK: - Encyclopedia-Only Diseases (18)
    static let encyclopediaOnly: [Disease] = [
        Disease(id: "ependymoma", name: "Ependymoma", shortDescription: "Tumor arising from ependymal cells", category: .tumors, estimatedDuration: 0, isInteractive: false),
        Disease(id: "medulloblastoma", name: "Medulloblastoma", shortDescription: "Most common malignant brain tumor in children", category: .tumors, estimatedDuration: 0, isInteractive: false),
        Disease(id: "frontotemporal_dementia", name: "Frontotemporal Dementia", shortDescription: "Dementia affecting personality and behavior", category: .neurodegenerative, estimatedDuration: 0, isInteractive: false),
        Disease(id: "lewy_body_dementia", name: "Lewy Body Dementia", shortDescription: "Dementia with visual hallucinations", category: .neurodegenerative, estimatedDuration: 0, isInteractive: false),
        Disease(id: "hemorrhagic_stroke", name: "Hemorrhagic Stroke", shortDescription: "Bleeding in the brain", category: .vascular, estimatedDuration: 0, isInteractive: false),
        Disease(id: "avm", name: "Arteriovenous Malformation (AVM)", shortDescription: "Abnormal tangle of blood vessels", category: .vascular, estimatedDuration: 0, isInteractive: false),
        Disease(id: "cavernous_malformation", name: "Cavernous Malformation", shortDescription: "Cluster of abnormal blood vessels", category: .vascular, estimatedDuration: 0, isInteractive: false),
        Disease(id: "encephalitis", name: "Encephalitis", shortDescription: "Brain inflammation, often viral", category: .autoimmune, estimatedDuration: 0, isInteractive: false),
        Disease(id: "neuromyelitis_optica", name: "Neuromyelitis Optica", shortDescription: "Autoimmune disorder affecting optic nerves", category: .autoimmune, estimatedDuration: 0, isInteractive: false),
        Disease(id: "autoimmune_encephalitis", name: "Autoimmune Encephalitis", shortDescription: "Immune system attacks brain cells", category: .autoimmune, estimatedDuration: 0, isInteractive: false),
        Disease(id: "concussion", name: "Concussion", shortDescription: "Mild traumatic brain injury", category: .traumatic, estimatedDuration: 0, isInteractive: false),
        Disease(id: "cte", name: "Chronic Traumatic Encephalopathy (CTE)", shortDescription: "Brain degeneration from repeated head trauma", category: .traumatic, estimatedDuration: 0, isInteractive: false),
        Disease(id: "hydrocephalus", name: "Hydrocephalus", shortDescription: "Buildup of fluid in brain", category: .developmental, estimatedDuration: 0, isInteractive: false),
        Disease(id: "chiari_malformation", name: "Chiari Malformation", shortDescription: "Structural defect in cerebellum", category: .developmental, estimatedDuration: 0, isInteractive: false),
        Disease(id: "cerebral_palsy", name: "Cerebral Palsy", shortDescription: "Movement disorder from early brain damage", category: .developmental, estimatedDuration: 0, isInteractive: false),
        Disease(id: "epilepsy", name: "Epilepsy", shortDescription: "Disorder causing recurrent seizures", category: .developmental, estimatedDuration: 0, isInteractive: false),
        Disease(id: "brain_abscess", name: "Brain Abscess", shortDescription: "Localized brain infection", category: .infectious, estimatedDuration: 0, isInteractive: false),
        Disease(id: "prion_diseases", name: "Prion Diseases (CJD)", shortDescription: "Rare degenerative brain disorders", category: .infectious, estimatedDuration: 0, isInteractive: false),
    ]

    // MARK: - All diseases combined
    static let allDiseases: [Disease] = interactiveModules + encyclopediaOnly

    // MARK: - Grouped by category
    static func modules(for category: DiseaseCategory) -> [Disease] {
        interactiveModules.filter { $0.category == category }
    }

    // MARK: - Module category sections for display
    static let moduleSections: [(title: String, ids: [String])] = [
        ("Tumors & Cancer", ["glioblastoma", "meningioma", "brain_metastases", "astrocytoma", "oligodendroglioma", "pituitary_adenoma"]),
        ("Neurodegenerative", ["alzheimers", "parkinsons", "huntingtons", "als", "multiple_system_atrophy"]),
        ("Vascular & Other", ["ischemic_stroke", "brain_aneurysm", "multiple_sclerosis", "traumatic_brain_injury"]),
    ]

    static func disease(for id: String) -> Disease? {
        allDiseases.first { $0.id == id }
    }
}
