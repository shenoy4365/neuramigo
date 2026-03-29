// DiseaseContentRegistry.swift
// Central lookup that maps disease IDs to their interactive learning content.

import Foundation

struct DiseaseContentRegistry {
    static func content(for id: String) -> DiseaseContent? {
        switch id {
        case "glioblastoma": return .glioblastoma
        case "meningioma": return .meningioma
        case "brain_metastases": return .brainMetastases
        case "astrocytoma": return .astrocytoma
        case "oligodendroglioma": return .oligodendroglioma
        case "pituitary_adenoma": return .pituitaryAdenoma
        case "alzheimers": return .alzheimers
        case "parkinsons": return .parkinsons
        case "huntingtons": return .huntingtons
        case "als": return .als
        case "multiple_system_atrophy": return .multipleSystemAtrophy
        case "ischemic_stroke": return .ischemicStroke
        case "brain_aneurysm": return .brainAneurysm
        case "multiple_sclerosis": return .multipleSclerosis
        case "traumatic_brain_injury": return .traumaticBrainInjury
        default: return nil
        }
    }
}
