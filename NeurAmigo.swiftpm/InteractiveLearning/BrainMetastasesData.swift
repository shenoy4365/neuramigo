// BrainMetastasesData.swift
// Static learning content for the brain metastases disease module.

import Foundation

extension DiseaseContent {
    static let brainMetastases = DiseaseContent(
        id: "brain_metastases",
        overview: OverviewContent(
            whatIsIt: [
                "Brain metastases are cancerous tumors that originate in another part of the body and spread (metastasize) to the brain. They are the most common type of brain tumor in adults, occurring about 10 times more frequently than primary brain tumors.",
                "Nearly any cancer can spread to the brain, but the most common sources are lung, breast, melanoma (skin), colon, and kidney cancers. Brain metastases indicate an advanced stage of the original cancer and present unique treatment challenges."
            ],
            keyStatistics: [
                "~200,000 new cases per year (US)",
                "10x more common than primary brain tumors",
                "Occur in 20-40% of all cancer patients",
                "Median survival varies: 4-24 months depending on treatment"
            ],
            howItDevelops: "Brain metastases are categorized by their primary cancer source:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Lung Cancer Metastases",
                    percentage: "40-50% of cases",
                    description: "Most common source of brain metastases. Both non-small cell and small cell lung cancers frequently spread to the brain, sometimes as the first sign of cancer."
                ),
                DiseaseTypeInfo(
                    name: "Breast Cancer Metastases",
                    percentage: "15-25% of cases",
                    description: "Second most common source. HER2-positive and triple-negative subtypes have higher rates of brain involvement. Can occur years after initial diagnosis."
                ),
                DiseaseTypeInfo(
                    name: "Melanoma Metastases",
                    percentage: "5-20% of cases",
                    description: "Melanoma has one of the highest rates of brain metastasis per cancer case. Often presents with multiple lesions and can cause hemorrhage."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets Brain Metastases?",
            ageDistribution: [
                AgeGroupInfo(range: "0-19", percentage: 1),
                AgeGroupInfo(range: "20-44", percentage: 10),
                AgeGroupInfo(range: "45-64", percentage: 45),
                AgeGroupInfo(range: "65+", percentage: 44)
            ],
            peakAge: "55-70 years",
            genderMale: 52,
            genderFemale: 48,
            genderExplanation: "Roughly equal, though slightly more common in men due to higher lung cancer rates",
            geographicHigher: [
                RegionInfo(region: "Developed nations", rate: "Higher detection due to advanced imaging"),
                RegionInfo(region: "Regions with high smoking rates", rate: "Correlated with lung cancer incidence")
            ],
            geographicLower: [
                RegionInfo(region: "Developing countries", rate: "Lower detection rates (less access to MRI)")
            ],
            geographicNote: "Geographic patterns largely reflect the underlying prevalence of cancers that commonly metastasize to the brain, particularly lung cancer.",
            confirmedRisks: [
                "Existing diagnosis of lung, breast, melanoma, colon, or kidney cancer",
                "Advanced stage (Stage III-IV) of any primary cancer",
                "Younger age at cancer diagnosis (longer time for metastasis to develop)",
                "Specific tumor biology: HER2+ breast cancer, EGFR+ lung cancer, BRAF+ melanoma"
            ],
            unconfirmedFactors: [
                "Certain chemotherapy drugs may alter blood-brain barrier permeability",
                "Genetic predisposition to metastatic spread (active research area)",
                "Immune system status and inflammatory markers",
                "Hormonal factors in breast cancer metastasis to brain"
            ],
            importantNote: "Brain metastases are not a separate cancer — they are composed of cells from the original (primary) tumor. A brain metastasis from lung cancer contains lung cancer cells, not brain cancer cells. This distinction is critical for treatment selection."
        ),
        symptoms: SymptomsContent(
            disclaimer: "These symptoms can occur with many conditions. Only a doctor can diagnose brain tumors. If experiencing concerning symptoms, consult a healthcare provider.",
            variabilityNote: "Symptoms depend on the number, size, and location of metastases:",
            mostFrequent: [
                SymptomInfo(
                    name: "Headaches",
                    details: [
                        "Present in ~50% of patients",
                        "Often worse in the morning",
                        "Can be sudden and severe (especially with hemorrhagic metastases)",
                        "May not respond to typical headache medications"
                    ]
                ),
                SymptomInfo(
                    name: "Cognitive Changes",
                    details: [
                        "Memory difficulties and confusion",
                        "Trouble concentrating or multitasking",
                        "Personality or behavioral changes",
                        "Can be the first noticeable symptom"
                    ]
                ),
                SymptomInfo(
                    name: "Focal Neurological Deficits",
                    details: [
                        "Weakness on one side of body (hemiparesis)",
                        "Speech difficulties (aphasia)",
                        "Vision changes or visual field loss",
                        "Depend on exact tumor location"
                    ]
                )
            ],
            common: [
                "Seizures (occur in ~25% of patients)",
                "Nausea and vomiting from increased intracranial pressure",
                "Balance and coordination problems",
                "Numbness or tingling sensations",
                "Fatigue and excessive drowsiness",
                "Difficulty with walking or fine motor tasks"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Cerebral Hemispheres", symptoms: "Weakness, sensory loss, cognitive deficits, seizures, personality changes"),
                LocationSymptomInfo(location: "Cerebellum", symptoms: "Loss of coordination, unsteady gait, dizziness, difficulty with fine motor skills"),
                LocationSymptomInfo(location: "Brainstem", symptoms: "Double vision, difficulty swallowing, facial weakness, balance problems, life-threatening compression"),
                LocationSymptomInfo(location: "Multiple Locations", symptoms: "Combined symptoms, rapid cognitive decline, increased intracranial pressure, hydrocephalus")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "Where Brain Metastases Occur",
            commonLocations: [
                BrainLocationInfo(region: "Cerebral Hemispheres", percentage: "80%", description: "Most common site, at the junction of gray and white matter where blood vessels narrow"),
                BrainLocationInfo(region: "Cerebellum", percentage: "15%", description: "Receives proportionally high blood flow, making it vulnerable to metastatic seeding"),
                BrainLocationInfo(region: "Brainstem", percentage: "3-5%", description: "Less common but critically dangerous due to vital functions controlled here"),
                BrainLocationInfo(region: "Leptomeninges", percentage: "5-8%", description: "Cancer cells in cerebrospinal fluid coating the brain surface (leptomeningeal disease)"),
                BrainLocationInfo(region: "Multiple Sites", percentage: "50-70%", description: "More than half of patients present with multiple brain metastases at diagnosis")
            ],
            characteristics: [
                "Typically round and well-demarcated — unlike primary brain tumors, they push tissue aside rather than infiltrate",
                "Found at the gray-white matter junction where tiny blood vessels trap circulating cancer cells",
                "Often surrounded by significant vasogenic edema (swelling) disproportionate to tumor size",
                "Melanoma and renal cell metastases are prone to hemorrhage (bleeding within the tumor)",
                "Distribution follows blood flow: ~80% in cerebral hemispheres, matching blood supply patterns",
                "Can occur as a single (solitary) lesion or multiple lesions scattered throughout the brain"
            ]
        ),
        treatment: TreatmentContent(
            intro: "Treatment for brain metastases depends on the number, size, and location of tumors, the primary cancer type, and the patient's overall condition.",
            biomarkers: [
                BiomarkerInfo(
                    name: "Primary Tumor Markers",
                    whatItIs: "Biomarkers from the original cancer (e.g., HER2 in breast, EGFR/ALK in lung, BRAF in melanoma) guide targeted therapy selection.",
                    whyItMatters: "Brain metastases retain the molecular profile of the primary cancer. Targeted therapies that cross the blood-brain barrier can be highly effective.",
                    prevalence: "Varies by cancer type"
                ),
                BiomarkerInfo(
                    name: "PD-L1 Expression",
                    whatItIs: "A protein on tumor cells that helps cancer evade the immune system. Higher expression may predict response to immunotherapy.",
                    whyItMatters: "Immune checkpoint inhibitors (anti-PD-1/PD-L1) have shown promising results in brain metastases from melanoma and lung cancer.",
                    prevalence: "30-60% of metastatic tumors"
                ),
                BiomarkerInfo(
                    name: "Graded Prognostic Assessment",
                    whatItIs: "A scoring system (GPA) based on age, performance status, number of metastases, and presence of systemic disease.",
                    whyItMatters: "Helps predict survival and guide treatment intensity — from aggressive multimodal therapy to supportive care.",
                    prevalence: "Applied to all patients"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Immediate Management",
                    timeline: "Days 1-7",
                    whatHappens: [
                        "Corticosteroids (dexamethasone) to reduce brain swelling",
                        "Anti-seizure medication if seizures have occurred",
                        "Brain MRI with contrast for complete assessment",
                        "Staging scans to evaluate systemic cancer status"
                    ],
                    whatToExpect: [
                        "Rapid symptom improvement with steroids (often within 24-48 hours)",
                        "Multiple imaging studies and consultations",
                        "Multidisciplinary team discussion (neurosurgery, radiation, oncology)",
                        "Treatment plan tailored to individual situation"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Local Treatment",
                    timeline: "Week 1-4",
                    whatHappens: [
                        "Surgery for large, symptomatic, or solitary metastases",
                        "Stereotactic radiosurgery (SRS) for small tumors (usually <3 cm)",
                        "Whole brain radiation therapy (WBRT) for multiple metastases",
                        "Combination approaches for complex cases"
                    ],
                    whatToExpect: [
                        "SRS: outpatient, single session, minimal recovery",
                        "Surgery: 3-7 day hospital stay, 2-4 week recovery",
                        "WBRT: 10-15 daily outpatient sessions over 2-3 weeks",
                        "Potential cognitive effects with WBRT (memory, concentration)"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Systemic Therapy",
                    timeline: "Ongoing",
                    whatHappens: [
                        "Targeted therapy based on tumor molecular profile",
                        "Immunotherapy for eligible patients (melanoma, lung cancer)",
                        "Traditional chemotherapy when other options are limited",
                        "Clinical trials investigating new brain-penetrating agents"
                    ],
                    whatToExpect: [
                        "Side effects vary by drug type",
                        "Regular blood work and imaging",
                        "Coordination between neuro-oncology and primary oncology teams",
                        "Many newer agents can cross the blood-brain barrier"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Monitoring & Supportive Care",
                    timeline: "Ongoing",
                    whatHappens: [
                        "Brain MRI every 2-3 months to monitor for new or recurring metastases",
                        "Cognitive rehabilitation if needed",
                        "Palliative care integrated early for symptom management",
                        "Close monitoring for treatment side effects"
                    ],
                    whatToExpect: [
                        "Steroid tapering as symptoms improve",
                        "Ongoing balance of treating brain disease and systemic cancer",
                        "Access to support services and clinical trials",
                        "Quality of life is a central treatment goal"
                    ]
                )
            ]
        )
    )
}
