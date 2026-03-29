// ParkinsonsData.swift
// Static learning content for the Parkinson's disease module.

import Foundation

extension DiseaseContent {
    static let parkinsons = DiseaseContent(
        id: "parkinsons",
        overview: OverviewContent(
            whatIsIt: [
                "Parkinson's disease is a progressive neurodegenerative disorder primarily affecting movement. It results from the gradual loss of dopamine-producing neurons in a brain region called the substantia nigra. Dopamine is a chemical messenger essential for smooth, coordinated muscle movement.",
                "While Parkinson's is widely known for its motor symptoms (tremor, rigidity, slowness), it is increasingly recognized as a whole-body disorder with significant non-motor features including sleep problems, depression, cognitive changes, and autonomic dysfunction that can appear years before motor symptoms."
            ],
            keyStatistics: [
                "~1 million Americans living with Parkinson's",
                "~90,000 new diagnoses per year (US)",
                "Second most common neurodegenerative disease (after Alzheimer's)",
                "Average age of onset: 60 years; ~10% diagnosed before 50"
            ],
            howItDevelops: "Parkinson's disease presents in different forms:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Idiopathic Parkinson's Disease",
                    percentage: "~85-90% of cases",
                    description: "Most common form with no single identifiable cause. Results from a combination of genetic susceptibility and environmental factors. Gradual onset over years."
                ),
                DiseaseTypeInfo(
                    name: "Genetic (Familial) Parkinson's",
                    percentage: "~10-15% of cases",
                    description: "Caused by identified gene mutations (LRRK2, SNCA, Parkin, PINK1, GBA). Often earlier onset. LRRK2 G2019S is the most common genetic form worldwide."
                ),
                DiseaseTypeInfo(
                    name: "Young-Onset Parkinson's",
                    percentage: "~10% of all cases",
                    description: "Diagnosed before age 50. Tends to progress more slowly with more prominent dystonia. Higher likelihood of genetic contribution. Michael J. Fox was diagnosed at 29."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets Parkinson's Disease?",
            ageDistribution: [
                AgeGroupInfo(range: "Under 50", percentage: 10),
                AgeGroupInfo(range: "50-64", percentage: 25),
                AgeGroupInfo(range: "65-79", percentage: 45),
                AgeGroupInfo(range: "80+", percentage: 20)
            ],
            peakAge: "60-70 years at diagnosis",
            genderMale: 60,
            genderFemale: 40,
            genderExplanation: "1.5x more common in men. Estrogen may have a neuroprotective effect on dopamine neurons.",
            geographicHigher: [
                RegionInfo(region: "North America & Europe", rate: "12-15 per 100,000"),
                RegionInfo(region: "Agricultural regions (pesticide exposure)", rate: "Higher incidence in farming communities")
            ],
            geographicLower: [
                RegionInfo(region: "Asia & Africa", rate: "5-10 per 100,000 (likely underdiagnosed)")
            ],
            geographicNote: "Geographic variation reflects both genetic background and environmental exposures. Rural farming communities with pesticide use consistently show higher rates.",
            confirmedRisks: [
                "Advancing age (strongest risk factor)",
                "Male sex (1.5x higher risk)",
                "Family history (first-degree relative increases risk 2-3x)",
                "Pesticide and herbicide exposure (paraquat, rotenone)",
                "Head trauma history",
                "GBA gene mutations (strongest common genetic risk factor)"
            ],
            unconfirmedFactors: [
                "Well water consumption in agricultural areas",
                "Heavy metal exposure (manganese, lead)",
                "Gut microbiome changes (gut-brain axis theory)",
                "Prior melanoma (bidirectional association observed)"
            ],
            importantNote: "Interestingly, caffeine consumption and cigarette smoking are consistently associated with lower Parkinson's risk in epidemiological studies — though smoking is obviously not recommended. This suggests nicotinic and adenosine receptor pathways may play protective roles."
        ),
        symptoms: SymptomsContent(
            disclaimer: "These symptoms can occur with many conditions. Only a neurologist can diagnose Parkinson's disease. If experiencing concerning symptoms, consult a healthcare provider.",
            variabilityNote: "Parkinson's symptoms typically begin on one side of the body and gradually become bilateral. Non-motor symptoms often precede motor symptoms by years:",
            mostFrequent: [
                SymptomInfo(
                    name: "Tremor",
                    details: [
                        "Classic 'pill-rolling' resting tremor (thumb and forefinger)",
                        "Usually begins in one hand at rest",
                        "Decreases with intentional movement",
                        "Present in ~70% of patients at diagnosis"
                    ]
                ),
                SymptomInfo(
                    name: "Bradykinesia (Slowness of Movement)",
                    details: [
                        "Most functionally disabling motor symptom",
                        "Difficulty initiating movement (freezing)",
                        "Small, cramped handwriting (micrographia)",
                        "Reduced facial expression (masked face / hypomimia)"
                    ]
                ),
                SymptomInfo(
                    name: "Rigidity & Postural Instability",
                    details: [
                        "Muscle stiffness throughout range of motion (cogwheel rigidity)",
                        "Stooped posture and shuffling gait",
                        "Difficulty with balance, especially turning",
                        "Increased fall risk as disease progresses"
                    ]
                )
            ],
            common: [
                "Loss of smell (hyposmia) — often the earliest symptom, years before motor signs",
                "REM sleep behavior disorder (acting out dreams)",
                "Constipation and other autonomic dysfunction",
                "Depression, anxiety, and apathy",
                "Soft, monotone speech (hypophonia)",
                "Difficulty swallowing (dysphagia) in later stages"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Substantia Nigra (brainstem)", symptoms: "Motor symptoms: tremor, slowness, rigidity — from dopamine neuron loss (60-80% lost before symptoms appear)"),
                LocationSymptomInfo(location: "Olfactory Bulb", symptoms: "Loss of smell — one of the earliest pre-motor markers, present in >90% of patients"),
                LocationSymptomInfo(location: "Locus Coeruleus & Raphe Nuclei", symptoms: "Depression, anxiety, sleep disturbances, autonomic dysfunction — from norepinephrine and serotonin loss"),
                LocationSymptomInfo(location: "Cortex (late stage)", symptoms: "Cognitive decline, dementia (Parkinson's disease dementia), visual hallucinations — affects 30-40% of patients over time")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "How Parkinson's Affects the Brain",
            commonLocations: [
                BrainLocationInfo(region: "Substantia Nigra", percentage: "Primary site", description: "Midbrain region where dopamine neurons die. By symptom onset, 60-80% of these neurons are already lost."),
                BrainLocationInfo(region: "Basal Ganglia", percentage: "Major circuit", description: "Network controlling movement — disrupted by dopamine loss. Includes caudate, putamen, and globus pallidus."),
                BrainLocationInfo(region: "Brainstem Nuclei", percentage: "Early involvement", description: "Locus coeruleus, raphe nuclei, and dorsal motor nucleus of vagus affected early, causing non-motor symptoms."),
                BrainLocationInfo(region: "Olfactory System", percentage: "Earliest affected", description: "One of the first brain areas to show Lewy body pathology, explaining early smell loss."),
                BrainLocationInfo(region: "Cerebral Cortex", percentage: "Late stage", description: "Cortical Lewy bodies develop in advanced disease, contributing to cognitive decline and dementia.")
            ],
            characteristics: [
                "Lewy bodies — abnormal clumps of alpha-synuclein protein — are the pathological hallmark",
                "Disease spreads in a predictable bottom-up pattern (Braak staging): gut/olfactory bulb → brainstem → midbrain → cortex",
                "Dopamine depletion primarily affects the nigrostriatal pathway (substantia nigra to striatum)",
                "Neuromelanin loss in substantia nigra is visible — area appears pale instead of its normal dark color",
                "Alpha-synuclein may spread cell-to-cell in a prion-like manner",
                "Gut-brain connection: alpha-synuclein found in gut neurons years before brain symptoms (Braak hypothesis)"
            ]
        ),
        treatment: TreatmentContent(
            intro: "While there is no cure, Parkinson's treatments are highly effective at managing symptoms, especially in the first several years. Treatment is individualized based on symptoms, age, and lifestyle.",
            biomarkers: [
                BiomarkerInfo(
                    name: "DaTscan (Dopamine Transporter Imaging)",
                    whatItIs: "A SPECT brain scan using a radioactive tracer that binds to dopamine transporters, visualizing dopamine nerve terminals in the striatum.",
                    whyItMatters: "Confirms dopaminergic deficit — helps distinguish Parkinson's from essential tremor and drug-induced parkinsonism. Does not differentiate between parkinsonian syndromes.",
                    prevalence: "Abnormal in virtually all Parkinson's patients"
                ),
                BiomarkerInfo(
                    name: "Alpha-Synuclein Seed Amplification Assay",
                    whatItIs: "A test that detects misfolded alpha-synuclein protein in cerebrospinal fluid or skin biopsies.",
                    whyItMatters: "Emerging as a definitive biomarker — can confirm synuclein pathology during life. Over 90% sensitivity and specificity in clinical studies. May enable earlier diagnosis.",
                    prevalence: "Positive in >90% of Parkinson's patients"
                ),
                BiomarkerInfo(
                    name: "GBA & LRRK2 Genetic Testing",
                    whatItIs: "Genetic tests for the two most common Parkinson's risk genes. GBA mutations are present in 5-15% of patients; LRRK2 in 1-2% (higher in certain populations).",
                    whyItMatters: "Targeted therapies are in clinical trials: GCase activators for GBA mutations, LRRK2 kinase inhibitors for LRRK2 mutations. Genetic testing guides clinical trial eligibility.",
                    prevalence: "GBA: 5-15%, LRRK2: 1-2% of all PD patients"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Early Stage — Lifestyle & Initial Medication",
                    timeline: "At diagnosis",
                    whatHappens: [
                        "Exercise program — high-intensity exercise shown to slow disease progression",
                        "MAO-B inhibitors (rasagiline, selegiline) for mild symptoms",
                        "Dopamine agonists (pramipexole, ropinirole) for younger patients",
                        "Levodopa/carbidopa for more significant symptoms — most effective PD medication"
                    ],
                    whatToExpect: [
                        "Excellent symptom control in early years ('honeymoon period')",
                        "Exercise 150+ minutes per week significantly impacts outcomes",
                        "Side effects vary by medication: nausea, dizziness, impulse control issues (agonists)",
                        "Most patients maintain good function for several years"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Mid Stage — Optimizing Motor Control",
                    timeline: "3-7 years after diagnosis",
                    whatHappens: [
                        "Levodopa dose adjustments as 'wearing off' periods develop",
                        "Addition of COMT inhibitors (entacapone) or MAO-B inhibitors to extend levodopa effect",
                        "Management of dyskinesias (involuntary movements from levodopa)",
                        "Physical therapy, occupational therapy, speech therapy"
                    ],
                    whatToExpect: [
                        "Motor fluctuations: 'on' periods (medication working) and 'off' periods",
                        "Dyskinesias may develop after several years of levodopa use",
                        "Medication timing becomes more precise and complex",
                        "Most patients continue independent living with adjustments"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Advanced Therapies",
                    timeline: "When oral medications become insufficient",
                    whatHappens: [
                        "Deep Brain Stimulation (DBS) — electrodes placed in subthalamic nucleus or GPi",
                        "Continuous levodopa-carbidopa intestinal gel (Duopa) via portable pump",
                        "Subcutaneous apomorphine infusion for severe fluctuations",
                        "Focused ultrasound — emerging noninvasive option for tremor"
                    ],
                    whatToExpect: [
                        "DBS: significant reduction in motor fluctuations and dyskinesia, allows medication reduction",
                        "DBS battery replacement every 3-5 years (rechargeable options last longer)",
                        "These therapies don't cure PD but dramatically improve quality of life",
                        "Patient selection is critical — best results in levodopa-responsive patients"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Comprehensive Long-term Care",
                    timeline: "Ongoing",
                    whatHappens: [
                        "Multidisciplinary care team (neurologist, PT, OT, speech, psychiatry, social work)",
                        "Management of non-motor symptoms: depression, constipation, sleep, cognition",
                        "Fall prevention strategies and home safety modifications",
                        "Caregiver support and advanced care planning"
                    ],
                    whatToExpect: [
                        "Disease progression varies widely — many live well for 15-20+ years",
                        "Non-motor symptoms often become more impactful than motor symptoms",
                        "Clinical trials for disease-modifying therapies are actively recruiting",
                        "Quality of life can be maintained with comprehensive, proactive management"
                    ]
                )
            ]
        )
    )
}
