// DiseaseContent.swift
// Data models for the five-tab interactive learning content (overview, risk factors, symptoms, anatomy, treatment).

import Foundation

// MARK: - Full Disease Content (all 5 tabs)
struct DiseaseContent {
    let id: String
    let overview: OverviewContent
    let riskFactors: RiskFactorsContent
    let symptoms: SymptomsContent
    let anatomy: AnatomyContent
    let treatment: TreatmentContent
}

// MARK: - Tab 1: Overview
struct OverviewContent {
    let whatIsIt: [String]           // paragraphs
    let keyStatistics: [String]      // bullet points
    let howItDevelops: String        // intro sentence
    let diseaseTypes: [DiseaseTypeInfo]
}

struct DiseaseTypeInfo {
    let name: String
    let percentage: String
    let description: String
}

// MARK: - Tab 2: Risk Factors
struct RiskFactorsContent {
    let intro: String
    let ageDistribution: [AgeGroupInfo]
    let peakAge: String
    let genderMale: Int
    let genderFemale: Int
    let genderExplanation: String
    let geographicHigher: [RegionInfo]
    let geographicLower: [RegionInfo]
    let geographicNote: String
    let confirmedRisks: [String]
    let unconfirmedFactors: [String]
    let importantNote: String
}

struct AgeGroupInfo {
    let range: String
    let percentage: Int
}

struct RegionInfo {
    let region: String
    let rate: String
}

// MARK: - Tab 3: Symptoms
struct SymptomsContent {
    let disclaimer: String
    let variabilityNote: String
    let mostFrequent: [SymptomInfo]
    let common: [String]
    let locationSpecific: [LocationSymptomInfo]
}

struct SymptomInfo {
    let name: String
    let details: [String]
}

struct LocationSymptomInfo {
    let location: String
    let symptoms: String
}

// MARK: - Tab 4: Brain Anatomy
struct AnatomyContent {
    let intro: String
    let commonLocations: [BrainLocationInfo]
    let characteristics: [String]
}

struct BrainLocationInfo {
    let region: String
    let percentage: String
    let description: String
}

// MARK: - Tab 5: Treatment & Biomarkers
struct TreatmentContent {
    let intro: String
    let biomarkers: [BiomarkerInfo]
    let phases: [TreatmentPhaseInfo]
}

struct BiomarkerInfo {
    let name: String
    let whatItIs: String
    let whyItMatters: String
    let prevalence: String
}

struct TreatmentPhaseInfo {
    let phaseNumber: Int
    let name: String
    let timeline: String
    let whatHappens: [String]
    let whatToExpect: [String]
}
