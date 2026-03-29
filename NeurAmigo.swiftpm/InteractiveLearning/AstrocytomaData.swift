// AstrocytomaData.swift
// Static learning content for the astrocytoma disease module.

import Foundation

extension DiseaseContent {
    static let astrocytoma = DiseaseContent(
        id: "astrocytoma",
        overview: OverviewContent(
            whatIsIt: [
                "Astrocytomas are brain tumors that develop from astrocytes — star-shaped glial cells that support and nourish neurons. They represent a spectrum of tumors ranging from slow-growing, low-grade lesions (WHO Grade II) to aggressive, high-grade malignancies (Grade III anaplastic astrocytoma).",
                "Unlike glioblastoma (Grade IV), lower-grade astrocytomas tend to grow more slowly and may be manageable for years. However, they carry a risk of transforming into higher-grade tumors over time, making long-term monitoring essential."
            ],
            keyStatistics: [
                "~2,000-3,000 new low-grade cases per year (US)",
                "Represent ~6% of all primary brain tumors",
                "Grade II median survival: 7-10 years",
                "Grade III median survival: 3-5 years"
            ],
            howItDevelops: "Astrocytomas are graded by the WHO classification system:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Grade II (Diffuse Astrocytoma)",
                    percentage: "~40% of astrocytomas",
                    description: "Slow-growing but infiltrative tumors. Cells appear mildly abnormal. Often diagnosed in younger adults. May remain stable for years before progressing."
                ),
                DiseaseTypeInfo(
                    name: "Grade III (Anaplastic Astrocytoma)",
                    percentage: "~25% of astrocytomas",
                    description: "More aggressive with rapidly dividing cells. Shows increased cellularity and nuclear abnormalities. Requires active treatment and has a higher recurrence risk."
                ),
                DiseaseTypeInfo(
                    name: "IDH-Mutant vs IDH-Wildtype",
                    percentage: "Key molecular distinction",
                    description: "IDH-mutant astrocytomas have significantly better prognosis. This molecular marker is now more important than histological grade alone for predicting outcomes."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets Astrocytomas?",
            ageDistribution: [
                AgeGroupInfo(range: "0-19", percentage: 15),
                AgeGroupInfo(range: "20-44", percentage: 45),
                AgeGroupInfo(range: "45-64", percentage: 30),
                AgeGroupInfo(range: "65+", percentage: 10)
            ],
            peakAge: "30-45 years (Grade II), 40-55 years (Grade III)",
            genderMale: 55,
            genderFemale: 45,
            genderExplanation: "Slightly more common in men, with a male-to-female ratio of about 1.2:1",
            geographicHigher: [
                RegionInfo(region: "North America & Northern Europe", rate: "2-3 per 100,000"),
                RegionInfo(region: "Australia", rate: "Similar to North American rates")
            ],
            geographicLower: [
                RegionInfo(region: "Asia & Africa", rate: "1-2 per 100,000")
            ],
            geographicNote: "Like other brain tumors, geographic variation may partly reflect differences in access to diagnostic imaging rather than true biological differences.",
            confirmedRisks: [
                "Ionizing radiation exposure (prior cranial radiation therapy)",
                "Neurofibromatosis type 1 (NF1) — increases risk of optic pathway and brainstem astrocytomas",
                "Li-Fraumeni syndrome (TP53 mutations)",
                "Tuberous sclerosis complex (subependymal giant cell astrocytoma)"
            ],
            unconfirmedFactors: [
                "Environmental chemical exposures (pesticides, solvents)",
                "Viral infections during development",
                "Electromagnetic field exposure",
                "Dietary factors and nutritional deficiencies"
            ],
            importantNote: "Low-grade astrocytomas occur more frequently in younger adults (20s-40s) compared to glioblastoma. An IDH mutation is present in most Grade II-III astrocytomas and is associated with better prognosis and younger age at diagnosis."
        ),
        symptoms: SymptomsContent(
            disclaimer: "These symptoms can occur with many conditions. Only a doctor can diagnose brain tumors. If experiencing concerning symptoms, consult a healthcare provider.",
            variabilityNote: "Low-grade astrocytomas may cause subtle symptoms for months or years before diagnosis:",
            mostFrequent: [
                SymptomInfo(
                    name: "Seizures",
                    details: [
                        "Most common presenting symptom (~60-80% of Grade II)",
                        "Often focal seizures affecting one body part",
                        "May be the only symptom for years",
                        "New-onset seizures in young adults should be investigated"
                    ]
                ),
                SymptomInfo(
                    name: "Headaches",
                    details: [
                        "Gradual onset, progressive over weeks to months",
                        "May be intermittent initially",
                        "Worse with position changes or Valsalva maneuver",
                        "Less acute than glioblastoma headaches"
                    ]
                ),
                SymptomInfo(
                    name: "Subtle Cognitive Changes",
                    details: [
                        "Mild memory or concentration difficulties",
                        "Slower processing speed",
                        "May be mistaken for stress or fatigue",
                        "Personality changes that family notices first"
                    ]
                )
            ],
            common: [
                "Speech or language difficulties",
                "Visual changes or field cuts",
                "Weakness or numbness on one side",
                "Mood changes, depression, or irritability",
                "Fatigue and reduced stamina",
                "Difficulty with coordination or fine motor tasks"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Frontal Lobe", symptoms: "Personality changes, impaired judgment, motor weakness, speech production problems (Broca's area)"),
                LocationSymptomInfo(location: "Temporal Lobe", symptoms: "Memory issues, auditory hallucinations, language comprehension problems, emotional changes"),
                LocationSymptomInfo(location: "Insular Cortex", symptoms: "Seizures with visceral sensations, speech difficulties, subtle personality changes — a common astrocytoma location"),
                LocationSymptomInfo(location: "Brainstem / Spinal Cord", symptoms: "Double vision, swallowing difficulty, gait problems, weakness — more common in pediatric astrocytomas")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "Where Astrocytomas Occur",
            commonLocations: [
                BrainLocationInfo(region: "Frontal Lobe", percentage: "30-35%", description: "Most common location, especially for low-grade diffuse astrocytomas"),
                BrainLocationInfo(region: "Temporal Lobe", percentage: "25-30%", description: "Second most common, associated with seizures and memory symptoms"),
                BrainLocationInfo(region: "Insular Cortex", percentage: "15-20%", description: "Deep location making surgical access challenging; common for IDH-mutant tumors"),
                BrainLocationInfo(region: "Parietal Lobe", percentage: "10-15%", description: "Affects spatial awareness, sensation, and reading/writing abilities"),
                BrainLocationInfo(region: "Brainstem / Other", percentage: "5-10%", description: "Brainstem gliomas more common in children; adults may have thalamic or spinal astrocytomas")
            ],
            characteristics: [
                "Diffusely infiltrative — tumor cells migrate along white matter tracts far beyond the visible tumor",
                "Typically appear as non-enhancing (Grade II) or partially enhancing (Grade III) on MRI",
                "Bright on T2/FLAIR MRI sequences, often without surrounding edema in low-grade tumors",
                "Tend to grow along functional brain pathways, making complete removal difficult",
                "IDH-mutant tumors often involve the frontal and temporal lobes with insular extension",
                "Can undergo malignant transformation from Grade II to Grade III or IV over years"
            ]
        ),
        treatment: TreatmentContent(
            intro: "Treatment strategy depends heavily on tumor grade, IDH mutation status, and other molecular markers. Low-grade astrocytomas may be observed initially, while higher-grade tumors require immediate intervention.",
            biomarkers: [
                BiomarkerInfo(
                    name: "IDH1/IDH2 Mutation",
                    whatItIs: "Mutations in isocitrate dehydrogenase enzymes produce an abnormal metabolite (2-HG) that drives tumor development.",
                    whyItMatters: "IDH-mutant astrocytomas have dramatically better prognosis (median survival 10+ years for Grade II vs 2-3 years for IDH-wildtype). New targeted IDH inhibitors (vorasidenib) show promising results.",
                    prevalence: "~70-80% of Grade II-III astrocytomas"
                ),
                BiomarkerInfo(
                    name: "ATRX Loss",
                    whatItIs: "Loss of ATRX protein is a defining feature that helps distinguish astrocytomas from oligodendrogliomas.",
                    whyItMatters: "ATRX loss combined with IDH mutation confirms astrocytoma diagnosis under the WHO 2021 classification. Affects how DNA is maintained in tumor cells.",
                    prevalence: "~85% of IDH-mutant astrocytomas"
                ),
                BiomarkerInfo(
                    name: "TP53 Mutation",
                    whatItIs: "Mutations in the TP53 tumor suppressor gene, which normally prevents damaged cells from growing.",
                    whyItMatters: "Found in most IDH-mutant astrocytomas. Helps classify the tumor and may influence treatment decisions for clinical trials.",
                    prevalence: "~60-70% of astrocytomas"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Surgery",
                    timeline: "Initial treatment",
                    whatHappens: [
                        "Maximal safe resection — removing as much tumor as safely possible",
                        "Awake craniotomy may be used for tumors near speech or motor areas",
                        "Intraoperative MRI and mapping to maximize extent of resection",
                        "Tissue biopsy for molecular profiling even if full removal isn't possible"
                    ],
                    whatToExpect: [
                        "Surgery typically 4-8 hours",
                        "Hospital stay: 3-7 days",
                        "Greater extent of resection associated with longer survival",
                        "Some patients achieve near-total removal with preserved function"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Observation or Early Treatment",
                    timeline: "After surgery",
                    whatHappens: [
                        "Low-risk Grade II (young, complete resection, IDH-mutant): may observe with serial MRI",
                        "High-risk Grade II or Grade III: proceed to radiation and chemotherapy",
                        "Risk factors: age >40, subtotal resection, large tumor size, neurological deficits",
                        "Vorasidenib (IDH inhibitor) now an option for IDH-mutant low-grade gliomas"
                    ],
                    whatToExpect: [
                        "Observation: MRI every 3-6 months initially",
                        "Decision made collaboratively between patient and care team",
                        "Quality of life is a major consideration in timing of treatment",
                        "Active surveillance does not mean neglect — close monitoring is essential"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Radiation & Chemotherapy",
                    timeline: "When indicated",
                    whatHappens: [
                        "Focal radiation therapy (54 Gy over 6 weeks for Grade II, 59.4 Gy for Grade III)",
                        "Temozolomide chemotherapy — often given after radiation for 6-12 cycles",
                        "PCV regimen (procarbazine, CCNU, vincristine) — alternative chemotherapy option",
                        "Treatment typically spans 6-12 months total"
                    ],
                    whatToExpect: [
                        "Fatigue during and after radiation",
                        "Mild to moderate nausea with chemotherapy (usually manageable)",
                        "Regular blood work monitoring",
                        "Cognitive effects may develop months to years after radiation"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Long-term Monitoring",
                    timeline: "Ongoing (years to decades)",
                    whatHappens: [
                        "Regular MRI scans (frequency decreases over time if stable)",
                        "Neurological and cognitive assessments",
                        "Seizure management and medication adjustments",
                        "Monitoring for malignant transformation"
                    ],
                    whatToExpect: [
                        "Many patients live 10+ years with IDH-mutant Grade II tumors",
                        "Seizure control often improves after treatment",
                        "Return to work and normal activities is common",
                        "Clinical trials available for recurrence or progression"
                    ]
                )
            ]
        )
    )
}
