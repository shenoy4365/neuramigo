// OligodendogliomaData.swift
// Static learning content for the oligodendroglioma disease module.

import Foundation

extension DiseaseContent {
    static let oligodendroglioma = DiseaseContent(
        id: "oligodendroglioma",
        overview: OverviewContent(
            whatIsIt: [
                "Oligodendrogliomas are brain tumors that arise from oligodendrocytes — the cells responsible for producing myelin, the insulating coating around nerve fibers. They are relatively rare but notable for having one of the best prognoses among infiltrating gliomas.",
                "A defining molecular feature is the co-deletion of chromosomes 1p and 19q (1p/19q codeletion), which is now required for diagnosis under the WHO 2021 classification. This genetic signature is associated with better treatment response and longer survival."
            ],
            keyStatistics: [
                "~1,500-2,000 new cases per year (US)",
                "Represent ~4% of all primary brain tumors",
                "Grade II median survival: 12-15+ years",
                "Grade III median survival: 7-10 years"
            ],
            howItDevelops: "Oligodendrogliomas are classified by WHO grade:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Grade II (Oligodendroglioma)",
                    percentage: "~60% of cases",
                    description: "Slow-growing tumors with classic 'fried egg' appearance under microscopy. Patients often live over a decade with appropriate treatment. Highly responsive to chemotherapy."
                ),
                DiseaseTypeInfo(
                    name: "Grade III (Anaplastic Oligodendroglioma)",
                    percentage: "~40% of cases",
                    description: "More aggressive with increased cell division and blood vessel formation. Still responds well to treatment compared to other high-grade gliomas. Median survival of 7-10 years."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets Oligodendrogliomas?",
            ageDistribution: [
                AgeGroupInfo(range: "0-19", percentage: 6),
                AgeGroupInfo(range: "20-44", percentage: 40),
                AgeGroupInfo(range: "45-64", percentage: 40),
                AgeGroupInfo(range: "65+", percentage: 14)
            ],
            peakAge: "35-55 years",
            genderMale: 55,
            genderFemale: 45,
            genderExplanation: "Slightly more common in men, similar to other gliomas",
            geographicHigher: [
                RegionInfo(region: "North America & Western Europe", rate: "0.3-0.5 per 100,000"),
                RegionInfo(region: "Australia & New Zealand", rate: "Similar to Western rates")
            ],
            geographicLower: [
                RegionInfo(region: "Asia & Africa", rate: "Lower reported rates, likely underdiagnosed")
            ],
            geographicNote: "Oligodendrogliomas are rare worldwide. Variation may reflect differences in molecular diagnostic capabilities needed for accurate classification.",
            confirmedRisks: [
                "Prior ionizing radiation to the head",
                "No confirmed hereditary syndromes specifically linked to oligodendroglioma",
                "IDH mutation is universally present (required for diagnosis)",
                "1p/19q codeletion is the defining molecular event"
            ],
            unconfirmedFactors: [
                "Environmental exposures (chemicals, solvents)",
                "Immune system dysregulation",
                "Viral factors during brain development",
                "No clear familial pattern has been established"
            ],
            importantNote: "Oligodendrogliomas have the best prognosis among infiltrating gliomas. The 1p/19q codeletion makes them exceptionally responsive to both radiation and PCV chemotherapy, leading to significantly longer survival than astrocytomas of the same grade."
        ),
        symptoms: SymptomsContent(
            disclaimer: "These symptoms can occur with many conditions. Only a doctor can diagnose brain tumors. If experiencing concerning symptoms, consult a healthcare provider.",
            variabilityNote: "Oligodendrogliomas often grow slowly, and symptoms may develop gradually over months to years:",
            mostFrequent: [
                SymptomInfo(
                    name: "Seizures",
                    details: [
                        "Most common presenting symptom (~70-80% of patients)",
                        "Often focal seizures that may secondarily generalize",
                        "Can precede diagnosis by months or even years",
                        "Generally respond well to anti-seizure medications"
                    ]
                ),
                SymptomInfo(
                    name: "Headaches",
                    details: [
                        "Usually gradual onset",
                        "May be positional or worse in the morning",
                        "Can be intermittent and mild for a long time",
                        "Severity increases as tumor grows"
                    ]
                ),
                SymptomInfo(
                    name: "Cognitive Changes",
                    details: [
                        "Subtle processing speed reduction",
                        "Word-finding difficulties",
                        "Attention and concentration problems",
                        "May be noticed by family before the patient"
                    ]
                )
            ],
            common: [
                "Visual disturbances or field loss",
                "Personality and mood changes",
                "Weakness on one side of the body",
                "Speech or language problems",
                "Balance and coordination difficulties",
                "Nausea (less common than with higher-grade tumors)"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Frontal Lobe", symptoms: "Executive function problems, personality changes, motor weakness, behavioral disinhibition"),
                LocationSymptomInfo(location: "Temporal Lobe", symptoms: "Memory difficulties, language comprehension issues, complex partial seizures with auras"),
                LocationSymptomInfo(location: "Parietal Lobe", symptoms: "Sensory changes, difficulty with spatial orientation, problems with reading and calculations"),
                LocationSymptomInfo(location: "Occipital Lobe", symptoms: "Visual field deficits, visual processing problems — less common location for oligodendrogliomas")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "Where Oligodendrogliomas Occur",
            commonLocations: [
                BrainLocationInfo(region: "Frontal Lobe", percentage: "50-65%", description: "By far the most common location, particularly the prefrontal and insular regions"),
                BrainLocationInfo(region: "Temporal Lobe", percentage: "15-20%", description: "Second most common site, often involving the mesial temporal structures"),
                BrainLocationInfo(region: "Parietal Lobe", percentage: "10-15%", description: "Less common but can affect sensory and spatial processing"),
                BrainLocationInfo(region: "Occipital Lobe", percentage: "3-5%", description: "Rare location for oligodendrogliomas"),
                BrainLocationInfo(region: "Multiple Lobes", percentage: "10-15%", description: "Can spread across lobar boundaries along white matter tracts")
            ],
            characteristics: [
                "Often located in the cortex and subcortical white matter of the cerebral hemispheres",
                "Characteristic calcifications visible on CT scan (~70-90% of cases)",
                "May cause cortical expansion without significant mass effect in early stages",
                "Classic 'fried egg' cell appearance under microscope (artifact of tissue processing)",
                "Tend to involve the cortex more than deep white matter structures",
                "Well-demarcated borders on imaging but microscopically infiltrative"
            ]
        ),
        treatment: TreatmentContent(
            intro: "Oligodendrogliomas are among the most treatment-responsive brain tumors. The 1p/19q codeletion confers exceptional sensitivity to both radiation and chemotherapy.",
            biomarkers: [
                BiomarkerInfo(
                    name: "1p/19q Codeletion",
                    whatItIs: "Simultaneous loss of the short arm of chromosome 1 and the long arm of chromosome 19. This is the defining molecular feature of oligodendrogliomas.",
                    whyItMatters: "Required for diagnosis. Confers dramatic sensitivity to PCV chemotherapy and radiation. Patients with this marker have significantly better outcomes than those without it.",
                    prevalence: "100% (required for diagnosis)"
                ),
                BiomarkerInfo(
                    name: "IDH1/IDH2 Mutation",
                    whatItIs: "Mutations in isocitrate dehydrogenase enzymes, universally present in oligodendrogliomas.",
                    whyItMatters: "Required for diagnosis along with 1p/19q codeletion. IDH-targeted therapies are being developed and show promising early results.",
                    prevalence: "100% (required for diagnosis)"
                ),
                BiomarkerInfo(
                    name: "TERT Promoter Mutation",
                    whatItIs: "Mutation in the telomerase reverse transcriptase promoter, found in virtually all oligodendrogliomas.",
                    whyItMatters: "Helps maintain telomere length, allowing tumor cells to divide indefinitely. Used as an additional diagnostic marker alongside IDH and 1p/19q.",
                    prevalence: "~95% of oligodendrogliomas"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Surgical Resection",
                    timeline: "Initial treatment",
                    whatHappens: [
                        "Maximal safe resection is the first-line treatment",
                        "Cortical mapping and awake surgery for tumors near eloquent areas",
                        "Extent of resection correlates with improved survival",
                        "Tissue needed for molecular confirmation (1p/19q, IDH testing)"
                    ],
                    whatToExpect: [
                        "Surgery typically 4-6 hours",
                        "Hospital stay: 3-5 days",
                        "Seizure improvement in many patients post-surgery",
                        "Complete removal possible in favorable locations"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Radiation Therapy",
                    timeline: "After surgery (timing varies)",
                    whatHappens: [
                        "Focal radiation therapy to the tumor bed and surrounding margin",
                        "54 Gy over 6 weeks for Grade II, 59.4 Gy for Grade III",
                        "May be deferred for low-risk Grade II after complete resection",
                        "Proton therapy considered to reduce long-term cognitive effects"
                    ],
                    whatToExpect: [
                        "Daily outpatient treatments (Monday-Friday) for 6 weeks",
                        "Fatigue and mild hair loss in treatment area",
                        "Minimal immediate side effects for most patients",
                        "Long-term cognitive effects possible (monitored over years)"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Chemotherapy (PCV or Temozolomide)",
                    timeline: "After radiation",
                    whatHappens: [
                        "PCV regimen: procarbazine, CCNU (lomustine), vincristine — gold standard",
                        "Given for 6 cycles, each lasting 6-8 weeks",
                        "Temozolomide is an alternative with fewer side effects",
                        "1p/19q codeletion predicts excellent response to PCV"
                    ],
                    whatToExpect: [
                        "PCV side effects: nausea, fatigue, low blood counts, nerve tingling",
                        "Temozolomide: generally better tolerated",
                        "Regular blood work monitoring required",
                        "Treatment duration: approximately 6-12 months"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Long-term Surveillance",
                    timeline: "Ongoing (years to decades)",
                    whatHappens: [
                        "Regular MRI scans every 3-6 months initially, then annually",
                        "Neurocognitive testing to monitor treatment effects",
                        "Seizure management and medication optimization",
                        "Quality of life assessments"
                    ],
                    whatToExpect: [
                        "Many patients survive 15-20+ years after diagnosis",
                        "Most return to normal daily activities and work",
                        "Recurrence possible but often retreatable",
                        "Ongoing research into novel therapies (IDH inhibitors, immunotherapy)"
                    ]
                )
            ]
        )
    )
}
