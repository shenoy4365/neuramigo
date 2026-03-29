// GlioblastomaData.swift
// Static learning content for the glioblastoma (GBM) disease module.

import Foundation

extension DiseaseContent {
    static let glioblastoma = DiseaseContent(
        id: "glioblastoma",
        overview: OverviewContent(
            whatIsIt: [
                "Glioblastoma (GBM) is the most aggressive type of brain cancer that develops from glial cells, which support and protect neurons. It is classified as a Grade IV astrocytoma, the highest grade of brain tumor.",
                "These tumors grow rapidly and infiltrate surrounding brain tissue, making complete surgical removal nearly impossible. Despite treatment advances, glioblastoma remains one of the most challenging cancers to treat."
            ],
            keyStatistics: [
                "~12,000 new cases per year (US)",
                "Represents 48% of all malignant brain tumors",
                "Median survival: 15 months with treatment",
                "5-year survival rate: ~7%"
            ],
            howItDevelops: "Glioblastoma can arise in two ways:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Primary Glioblastoma",
                    percentage: "90% of cases",
                    description: "Develops rapidly without warning, typically in older adults. These tumors form de novo (from the beginning) without any precursor lesion."
                ),
                DiseaseTypeInfo(
                    name: "Secondary Glioblastoma",
                    percentage: "10% of cases",
                    description: "Evolves from lower-grade astrocytomas (Grade II or III) over several years. More common in younger patients and associated with IDH mutations."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets Glioblastoma?",
            ageDistribution: [
                AgeGroupInfo(range: "0-19", percentage: 5),
                AgeGroupInfo(range: "20-44", percentage: 15),
                AgeGroupInfo(range: "45-64", percentage: 45),
                AgeGroupInfo(range: "65+", percentage: 35)
            ],
            peakAge: "55-65 years",
            genderMale: 60,
            genderFemale: 40,
            genderExplanation: "Approximately 1.5x more common in men",
            geographicHigher: [
                RegionInfo(region: "North America & Western Europe", rate: "4-5 per 100,000"),
                RegionInfo(region: "Australia & New Zealand", rate: "3-4 per 100,000")
            ],
            geographicLower: [
                RegionInfo(region: "Asia & Africa", rate: "1-2 per 100,000")
            ],
            geographicNote: "Differences may reflect variations in diagnosis rates and reporting rather than true biological differences.",
            confirmedRisks: [
                "Ionizing radiation exposure (especially childhood radiation therapy to head)",
                "Rare genetic syndromes: Neurofibromatosis (NF1, NF2), Li-Fraumeni syndrome, Lynch syndrome, Turcot syndrome"
            ],
            unconfirmedFactors: [
                "Cell phone use (no proven link in major epidemiological studies)",
                "Dietary factors (no strong evidence)",
                "Occupational chemical exposures (inconclusive data)"
            ],
            importantNote: "Most glioblastoma cases (>95%) occur sporadically with no identifiable cause. Only about 5% are linked to hereditary genetic syndromes."
        ),
        symptoms: SymptomsContent(
            disclaimer: "These symptoms can occur with many conditions. Only a doctor can diagnose brain tumors. If experiencing concerning symptoms, consult a healthcare provider.",
            variabilityNote: "Symptoms vary based on tumor location, size, and growth rate:",
            mostFrequent: [
                SymptomInfo(
                    name: "Persistent Headaches",
                    details: [
                        "Often worse in the morning",
                        "May worsen with coughing or bending over",
                        "Progressive and increasingly severe over time",
                        "Different from typical headaches"
                    ]
                ),
                SymptomInfo(
                    name: "Seizures",
                    details: [
                        "Often first symptom in younger patients",
                        "Can be focal (affecting one area) or generalized",
                        "New-onset seizures in adults always warrant investigation"
                    ]
                ),
                SymptomInfo(
                    name: "Cognitive & Memory Changes",
                    details: [
                        "Difficulty concentrating",
                        "Short-term memory problems",
                        "Confusion or disorientation",
                        "Personality or mood changes"
                    ]
                )
            ],
            common: [
                "Nausea and vomiting (especially morning)",
                "Vision problems (blurred or double vision)",
                "Weakness on one side of body",
                "Speech difficulties or slurred speech",
                "Balance and coordination problems",
                "Numbness or tingling in extremities"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Frontal Lobe Tumors", symptoms: "Personality changes, difficulty with planning and decision-making, loss of inhibition, motor weakness"),
                LocationSymptomInfo(location: "Temporal Lobe Tumors", symptoms: "Memory problems, language difficulties, unusual sensations or smells, emotional changes"),
                LocationSymptomInfo(location: "Parietal Lobe Tumors", symptoms: "Difficulty with spatial awareness, trouble with reading or writing, numbness on one side"),
                LocationSymptomInfo(location: "Occipital Lobe Tumors", symptoms: "Vision problems, visual field loss, hallucinations, difficulty recognizing objects")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "Where Glioblastoma Occurs",
            commonLocations: [
                BrainLocationInfo(region: "Frontal Lobe", percentage: "25%", description: "Affects personality, movement, decision-making"),
                BrainLocationInfo(region: "Temporal Lobe", percentage: "20%", description: "Affects memory, language, emotions"),
                BrainLocationInfo(region: "Parietal Lobe", percentage: "15%", description: "Affects spatial awareness, sensation"),
                BrainLocationInfo(region: "Occipital Lobe", percentage: "10%", description: "Affects vision and visual processing"),
                BrainLocationInfo(region: "Multiple Lobes / Deep Structures", percentage: "30%", description: "Tumors often cross regional boundaries or occur in deeper brain areas like thalamus or basal ganglia")
            ],
            characteristics: [
                "Highly infiltrative — spreads into healthy brain tissue like roots of a tree",
                "Irregular borders — difficult to distinguish tumor from normal tissue",
                "Can grow rapidly, sometimes doubling in size within weeks",
                "Usually cannot be completely removed surgically without damaging critical brain tissue",
                "May cause surrounding brain swelling (edema) that worsens symptoms"
            ]
        ),
        treatment: TreatmentContent(
            intro: "Modern glioblastoma treatment is personalized based on molecular biomarkers identified through tumor testing.",
            biomarkers: [
                BiomarkerInfo(
                    name: "MGMT Methylation",
                    whatItIs: "MGMT is a DNA repair gene. When it's \"methylated\" (turned off), tumor cells can't repair damage from chemotherapy.",
                    whyItMatters: "Patients with MGMT methylation respond significantly better to temozolomide chemotherapy.",
                    prevalence: "~45% of glioblastomas"
                ),
                BiomarkerInfo(
                    name: "IDH Mutation",
                    whatItIs: "Isocitrate dehydrogenase (IDH) is a metabolic enzyme. Mutations change how tumor cells process energy.",
                    whyItMatters: "IDH-mutant glioblastomas have better prognosis and occur in younger patients. Rare in primary GBM (~10%), more common in secondary GBM.",
                    prevalence: "~10% of primary glioblastomas"
                ),
                BiomarkerInfo(
                    name: "EGFR Amplification",
                    whatItIs: "Extra copies of the EGFR gene, causing excessive cell growth signals.",
                    whyItMatters: "Found in ~40% of glioblastomas. Target for investigational therapies.",
                    prevalence: "~40% of glioblastomas"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Surgery",
                    timeline: "Week 1-2",
                    whatHappens: [
                        "Neurosurgeon removes as much tumor as safely possible",
                        "Surgery typically 3-6 hours",
                        "Hospital stay: 3-7 days",
                        "Tumor tissue sent for biomarker testing"
                    ],
                    whatToExpect: [
                        "General anesthesia",
                        "Possible temporary worsening of symptoms post-surgery",
                        "Recovery time: 2-4 weeks",
                        "Physical/occupational therapy may be needed"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Concurrent Chemoradiation",
                    timeline: "Week 3-9",
                    whatHappens: [
                        "Daily radiation treatments (Monday-Friday) for 6 weeks",
                        "Daily oral temozolomide chemotherapy during radiation",
                        "Regular blood tests to monitor side effects"
                    ],
                    whatToExpect: [
                        "Fatigue (most common side effect)",
                        "Hair loss in radiation area",
                        "Nausea (usually manageable with medication)",
                        "Gradual improvement after treatment ends"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Adjuvant Chemotherapy",
                    timeline: "Month 3-9",
                    whatHappens: [
                        "6 cycles of temozolomide (5 days on, 23 days off)",
                        "Each cycle lasts 28 days",
                        "Regular MRI scans to monitor tumor"
                    ],
                    whatToExpect: [
                        "Continued fatigue",
                        "Low blood counts (increased infection risk)",
                        "Regular blood monitoring required",
                        "Most patients can maintain some daily activities"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Surveillance & Monitoring",
                    timeline: "Ongoing",
                    whatHappens: [
                        "Regular MRI scans (every 2-3 months initially)",
                        "Neurological examinations",
                        "Symptom monitoring and management"
                    ],
                    whatToExpect: [
                        "Gradual spacing of scan intervals if stable",
                        "Ongoing symptom management",
                        "Access to clinical trials if recurrence occurs",
                        "Supportive care and rehabilitation as needed"
                    ]
                )
            ]
        )
    )
}
