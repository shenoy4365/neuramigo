// MeningiomaData.swift
// Static learning content for the meningioma disease module.

import Foundation

extension DiseaseContent {
    static let meningioma = DiseaseContent(
        id: "meningioma",
        overview: OverviewContent(
            whatIsIt: [
                "Meningiomas are tumors that arise from the meninges — the protective membranes that surround the brain and spinal cord. They are the most common type of primary brain tumor, accounting for roughly 40% of all intracranial tumors.",
                "The vast majority of meningiomas (about 80%) are benign (WHO Grade I), meaning they grow slowly, have well-defined borders, and rarely spread to other parts of the body. However, some meningiomas can be atypical (Grade II) or malignant (Grade III), requiring more aggressive treatment."
            ],
            keyStatistics: [
                "~40,000 new cases per year (US)",
                "Most common primary brain tumor (~40%)",
                "~80% are benign (WHO Grade I)",
                "5-year survival rate: ~85% overall"
            ],
            howItDevelops: "Meningiomas are classified by WHO grading:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Grade I (Benign)",
                    percentage: "80% of cases",
                    description: "Slow-growing tumors with clear borders. Many are discovered incidentally and may only need monitoring. Surgical removal is often curative."
                ),
                DiseaseTypeInfo(
                    name: "Grade II (Atypical)",
                    percentage: "15-20% of cases",
                    description: "Faster-growing tumors with higher risk of recurrence after surgery. Often require radiation therapy in addition to surgery."
                ),
                DiseaseTypeInfo(
                    name: "Grade III (Malignant)",
                    percentage: "1-3% of cases",
                    description: "Aggressive tumors that can invade brain tissue and recur frequently. Require multimodal treatment including surgery, radiation, and sometimes chemotherapy."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets Meningiomas?",
            ageDistribution: [
                AgeGroupInfo(range: "0-19", percentage: 3),
                AgeGroupInfo(range: "20-44", percentage: 15),
                AgeGroupInfo(range: "45-64", percentage: 40),
                AgeGroupInfo(range: "65+", percentage: 42)
            ],
            peakAge: "65-75 years",
            genderMale: 35,
            genderFemale: 65,
            genderExplanation: "Approximately 2x more common in women, possibly linked to hormonal factors",
            geographicHigher: [
                RegionInfo(region: "North America & Europe", rate: "8-9 per 100,000"),
                RegionInfo(region: "Africa", rate: "Relatively high in some sub-Saharan regions")
            ],
            geographicLower: [
                RegionInfo(region: "Asia", rate: "3-5 per 100,000")
            ],
            geographicNote: "Increased detection through routine imaging may partly explain higher reported rates in developed countries.",
            confirmedRisks: [
                "Ionizing radiation exposure (especially childhood cranial radiation)",
                "Neurofibromatosis type 2 (NF2) — genetic condition causing multiple meningiomas",
                "Female sex hormones — higher incidence in women, some meningiomas express progesterone receptors",
                "Increasing age — risk rises significantly after age 50"
            ],
            unconfirmedFactors: [
                "Obesity (some studies show association, mechanism unclear)",
                "Hormone replacement therapy (conflicting results)",
                "Head trauma (weak and inconsistent evidence)",
                "Cell phone use (no established causal link)"
            ],
            importantNote: "Most meningiomas arise sporadically. The strong female predominance and presence of hormone receptors in many tumors suggest hormonal factors play a role, though the exact mechanism remains under study."
        ),
        symptoms: SymptomsContent(
            disclaimer: "These symptoms can occur with many conditions. Only a doctor can diagnose brain tumors. If experiencing concerning symptoms, consult a healthcare provider.",
            variabilityNote: "Symptoms depend on tumor size and location. Many small meningiomas cause no symptoms and are found incidentally:",
            mostFrequent: [
                SymptomInfo(
                    name: "Headaches",
                    details: [
                        "Often gradual onset over months",
                        "Worse in the morning or when lying down",
                        "May be the only symptom for a long time",
                        "Usually mild and slowly progressive"
                    ]
                ),
                SymptomInfo(
                    name: "Vision Changes",
                    details: [
                        "Blurred or double vision",
                        "Loss of peripheral vision",
                        "Especially common with tumors near the optic nerve",
                        "May affect one or both eyes"
                    ]
                ),
                SymptomInfo(
                    name: "Seizures",
                    details: [
                        "Can be the first presenting symptom",
                        "More common with convexity meningiomas",
                        "May be focal or generalized",
                        "New-onset seizures warrant medical evaluation"
                    ]
                )
            ],
            common: [
                "Weakness in arms or legs",
                "Hearing loss or ringing in ears",
                "Memory or cognitive changes",
                "Loss of smell (olfactory groove tumors)",
                "Personality or behavioral changes",
                "Balance and coordination difficulties"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Convexity (brain surface)", symptoms: "Seizures, headaches, focal weakness on opposite side of body"),
                LocationSymptomInfo(location: "Parasagittal / Falcine", symptoms: "Leg weakness, personality changes, difficulty with planning, urinary problems"),
                LocationSymptomInfo(location: "Sphenoid Wing", symptoms: "Vision problems, facial numbness, eye bulging, headaches behind the eye"),
                LocationSymptomInfo(location: "Cerebellopontine Angle", symptoms: "Hearing loss, facial weakness, dizziness, tinnitus (ringing in ears)")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "Where Meningiomas Occur",
            commonLocations: [
                BrainLocationInfo(region: "Convexity", percentage: "20-30%", description: "Over the surface of the brain, most accessible surgically"),
                BrainLocationInfo(region: "Parasagittal / Falcine", percentage: "20-25%", description: "Along the midline membrane dividing the hemispheres"),
                BrainLocationInfo(region: "Sphenoid Wing", percentage: "15-20%", description: "Along the bony ridge behind the eyes"),
                BrainLocationInfo(region: "Posterior Fossa", percentage: "10%", description: "Near the brainstem and cerebellum"),
                BrainLocationInfo(region: "Skull Base / Other", percentage: "20-25%", description: "Olfactory groove, tuberculum sellae, petroclival region")
            ],
            characteristics: [
                "Well-defined, round or lobulated shape — often described as 'en plaque' when flat",
                "Attached to the dura mater (outer meningeal membrane) with a 'dural tail' sign on MRI",
                "Compress rather than invade brain tissue — push the brain aside as they grow",
                "Can calcify over time, visible on CT scans",
                "May grow into and erode adjacent skull bone (hyperostosis)",
                "Some develop their own blood supply from meningeal arteries"
            ]
        ),
        treatment: TreatmentContent(
            intro: "Treatment for meningioma depends on tumor grade, size, location, and the patient's symptoms and overall health.",
            biomarkers: [
                BiomarkerInfo(
                    name: "NF2 / Merlin",
                    whatItIs: "NF2 gene encodes merlin, a tumor suppressor protein. Loss of NF2 function is the most common genetic alteration in meningiomas.",
                    whyItMatters: "NF2 mutations are found in ~60% of sporadic meningiomas. Patients with NF2 syndrome develop multiple meningiomas.",
                    prevalence: "~60% of meningiomas"
                ),
                BiomarkerInfo(
                    name: "Progesterone Receptors",
                    whatItIs: "Many meningiomas express progesterone receptors (PR), suggesting hormonal influences on tumor growth.",
                    whyItMatters: "PR-positive tumors tend to be lower grade and have better prognosis. Anti-progesterone therapies are being studied as potential treatments.",
                    prevalence: "~70% of Grade I meningiomas"
                ),
                BiomarkerInfo(
                    name: "Ki-67 Index",
                    whatItIs: "A marker of how quickly cells are dividing. Higher Ki-67 means faster growth.",
                    whyItMatters: "Ki-67 helps distinguish tumor grades and predict recurrence risk. Grade I typically <5%, Grade II 5-20%, Grade III >20%.",
                    prevalence: "Measured in all meningiomas"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Observation (Watch & Wait)",
                    timeline: "Ongoing if chosen",
                    whatHappens: [
                        "Regular MRI scans every 6-12 months",
                        "Monitoring for symptom changes or tumor growth",
                        "Appropriate for small, asymptomatic tumors",
                        "Many incidental meningiomas never require treatment"
                    ],
                    whatToExpect: [
                        "No immediate treatment or recovery needed",
                        "Periodic imaging appointments",
                        "Intervention only if tumor grows or symptoms develop",
                        "About 60-70% of observed meningiomas remain stable"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Surgical Resection",
                    timeline: "When treatment is needed",
                    whatHappens: [
                        "Craniotomy to remove the tumor",
                        "Goal: complete removal including attached dura (Simpson Grade I)",
                        "Intraoperative navigation and monitoring used",
                        "Surgery typically 3-8 hours depending on location"
                    ],
                    whatToExpect: [
                        "Hospital stay: 3-7 days",
                        "Recovery time: 4-6 weeks",
                        "Temporary worsening of symptoms possible",
                        "Complete removal often curative for Grade I tumors"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Radiation Therapy",
                    timeline: "After surgery if needed",
                    whatHappens: [
                        "Used for incompletely removed, recurrent, or higher-grade tumors",
                        "Stereotactic radiosurgery (Gamma Knife, CyberKnife) for small tumors",
                        "Fractionated radiotherapy for larger or skull base tumors",
                        "Proton beam therapy emerging for complex cases"
                    ],
                    whatToExpect: [
                        "Outpatient treatments over several weeks (fractionated)",
                        "Single-session for stereotactic radiosurgery",
                        "Fatigue is the most common side effect",
                        "High local control rates (>90% for Grade I)"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Long-term Follow-up",
                    timeline: "Ongoing",
                    whatHappens: [
                        "Regular MRI scans to monitor for recurrence",
                        "Initially every 6 months, then annually",
                        "Neurological assessments as needed",
                        "Management of any lasting effects"
                    ],
                    whatToExpect: [
                        "Grade I recurrence rate: ~10-15% at 10 years after complete removal",
                        "Grade II recurrence rate: ~40-50% at 5 years",
                        "Most patients return to normal activities",
                        "Anti-seizure medications may be continued if seizures were present"
                    ]
                )
            ]
        )
    )
}
