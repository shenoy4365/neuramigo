// MultipleSystemAtrophyData.swift
// Static learning content for the multiple system atrophy (MSA) disease module.

import Foundation

extension DiseaseContent {
    static let multipleSystemAtrophy = DiseaseContent(
        id: "multiple_system_atrophy",
        overview: OverviewContent(
            whatIsIt: [
                "Multiple System Atrophy (MSA) is a rare, progressive neurodegenerative disorder caused by the abnormal accumulation of a protein called alpha-synuclein in brain cells. Unlike Parkinson's disease, where alpha-synuclein builds up mainly in neurons, MSA primarily affects glial cells (oligodendrocytes) that support and insulate nerve fibers.",
                "MSA causes widespread damage across multiple brain systems, leading to a combination of movement problems, autonomic failure (disruption of automatic body functions like blood pressure and bladder control), and cerebellar dysfunction. The disease progresses more rapidly than Parkinson's, with an average survival of 6-10 years from symptom onset."
            ],
            keyStatistics: [
                "Prevalence: 3-5 per 100,000 people",
                "~3,000-5,000 people currently living with MSA in the US",
                "Average age of onset: 50-60 years",
                "Mean survival: 6-10 years from first symptoms",
                "Often misdiagnosed initially as Parkinson's disease"
            ],
            howItDevelops: "MSA presents in two main subtypes based on the predominant symptoms:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "MSA-P (Parkinsonian Type)",
                    percentage: "~60% of cases in Western countries",
                    description: "Predominant features resemble Parkinson's disease: slowness of movement, rigidity, and sometimes tremor. However, the response to levodopa medication is typically poor or short-lived. Previously known as striatonigral degeneration."
                ),
                DiseaseTypeInfo(
                    name: "MSA-C (Cerebellar Type)",
                    percentage: "~40% of cases in Western countries",
                    description: "Predominant features involve cerebellar dysfunction: gait and limb ataxia (uncoordinated movements), slurred speech, and difficulty with balance. More common in East Asian populations. Previously known as sporadic olivopontocerebellar atrophy."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets Multiple System Atrophy?",
            ageDistribution: [
                AgeGroupInfo(range: "Under 40", percentage: 2),
                AgeGroupInfo(range: "40-49", percentage: 13),
                AgeGroupInfo(range: "50-59", percentage: 35),
                AgeGroupInfo(range: "60-69", percentage: 35),
                AgeGroupInfo(range: "70+", percentage: 15)
            ],
            peakAge: "55-60 years at symptom onset",
            genderMale: 55,
            genderFemale: 45,
            genderExplanation: "MSA affects men slightly more often than women, with a male-to-female ratio of approximately 1.3:1. The reason for this mild male predominance is not well understood.",
            geographicHigher: [
                RegionInfo(region: "Europe & North America", rate: "3-5 per 100,000"),
                RegionInfo(region: "Japan (MSA-C subtype)", rate: "Higher proportion of cerebellar type")
            ],
            geographicLower: [
                RegionInfo(region: "Low-income countries", rate: "Likely underdiagnosed and underreported")
            ],
            geographicNote: "MSA appears to occur worldwide, but prevalence data is limited due to the rarity of the disease and frequent misdiagnosis. In East Asian populations, the cerebellar subtype (MSA-C) is more common than the parkinsonian subtype (MSA-P), which is the opposite of the pattern seen in Western countries.",
            confirmedRisks: [
                "Advancing age (strongest risk factor, peak onset 50-60)",
                "MSA is considered sporadic — no confirmed strong genetic links",
                "No single environmental cause has been definitively identified"
            ],
            unconfirmedFactors: [
                "Variants in the SNCA gene (alpha-synuclein) may modestly increase risk",
                "COQ2 gene variants studied in Japanese populations",
                "Occupational exposure to organic solvents, pesticides, or metals",
                "Prior head trauma",
                "Farming or agricultural work (under investigation)"
            ],
            importantNote: "Unlike Parkinson's disease, MSA is considered a sporadic disease with no established hereditary pattern. Most cases arise without a family history of the condition. Research into potential genetic susceptibility factors is ongoing, but currently no genetic test can predict MSA risk."
        ),
        symptoms: SymptomsContent(
            disclaimer: "These symptoms overlap significantly with Parkinson's disease and other neurological conditions. A definitive diagnosis of MSA requires expert neurological evaluation. If experiencing these symptoms, consult a movement disorder specialist.",
            variabilityNote: "MSA is defined by the combination of autonomic failure with either parkinsonian or cerebellar features. Autonomic symptoms are a hallmark and often appear early:",
            mostFrequent: [
                SymptomInfo(
                    name: "Autonomic Failure",
                    details: [
                        "Orthostatic hypotension — significant blood pressure drop upon standing, causing dizziness and fainting",
                        "Neurogenic bladder dysfunction — urinary urgency, frequency, incomplete emptying, or incontinence",
                        "Erectile dysfunction in men (often one of the earliest symptoms)",
                        "Constipation and impaired gut motility",
                        "Reduced sweating (anhidrosis), leading to heat intolerance"
                    ]
                ),
                SymptomInfo(
                    name: "Parkinsonism (MSA-P)",
                    details: [
                        "Bradykinesia (slowness of movement) and rigidity",
                        "Postural instability with early and frequent falls",
                        "Tremor is less common and less typical than in Parkinson's disease",
                        "Poor or waning response to levodopa (a key distinguishing feature)"
                    ]
                ),
                SymptomInfo(
                    name: "Cerebellar Ataxia (MSA-C)",
                    details: [
                        "Wide-based, unsteady gait (cerebellar ataxia)",
                        "Limb incoordination — difficulty with fine motor tasks",
                        "Cerebellar dysarthria — slurred, scanning, or irregular speech",
                        "Oculomotor abnormalities — jerky eye movements (nystagmus)"
                    ]
                )
            ],
            common: [
                "Stridor — noisy, high-pitched breathing during sleep from vocal cord dysfunction (potentially dangerous)",
                "REM sleep behavior disorder — acting out dreams (can precede other symptoms by years)",
                "Rapid disease progression compared to typical Parkinson's disease",
                "Severe speech and swallowing difficulties (dysphagia) as disease advances",
                "Cold, discolored hands and feet (Raynaud-like phenomenon)",
                "Emotional incontinence — involuntary crying or laughing (pseudobulbar affect)"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Striatum & Substantia Nigra", symptoms: "Parkinsonian features: slowness, rigidity, poor levodopa response — from degeneration of nigrostriatal dopamine pathways"),
                LocationSymptomInfo(location: "Cerebellum & Pons", symptoms: "Cerebellar ataxia: uncoordinated gait, slurred speech, limb incoordination — from Purkinje cell and pontine neuron loss"),
                LocationSymptomInfo(location: "Brainstem Autonomic Nuclei", symptoms: "Autonomic failure: blood pressure instability, bladder dysfunction, breathing abnormalities — from degeneration of cardiovascular, urogenital, and respiratory control centers"),
                LocationSymptomInfo(location: "Spinal Cord (Intermediolateral Column)", symptoms: "Contributes to autonomic dysfunction: impaired blood pressure regulation and sweating — from loss of preganglionic sympathetic neurons")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "How MSA Affects the Brain and Nervous System",
            commonLocations: [
                BrainLocationInfo(region: "Striatum (Putamen & Caudate)", percentage: "Primary site in MSA-P", description: "Severe neuronal loss and gliosis in the putamen. Glial cytoplasmic inclusions (GCIs) containing alpha-synuclein accumulate in oligodendrocytes, disrupting basal ganglia motor circuits."),
                BrainLocationInfo(region: "Substantia Nigra", percentage: "Affected in MSA-P", description: "Dopamine neuron degeneration similar to Parkinson's disease, but accompanied by more widespread damage in surrounding structures."),
                BrainLocationInfo(region: "Cerebellum", percentage: "Primary site in MSA-C", description: "Loss of Purkinje cells, the large output neurons of the cerebellar cortex. Leads to impaired coordination, balance, and speech articulation."),
                BrainLocationInfo(region: "Pons & Inferior Olives", percentage: "Affected in MSA-C", description: "Degeneration of pontine nuclei and inferior olivary complex disrupts cerebellar input pathways, compounding ataxia."),
                BrainLocationInfo(region: "Brainstem Autonomic Centers", percentage: "Affected in all MSA", description: "Degeneration of medullary cardiovascular, respiratory, and micturition control centers causes the characteristic autonomic failure.")
            ],
            characteristics: [
                "Glial cytoplasmic inclusions (GCIs) — alpha-synuclein deposits inside oligodendrocytes — are the defining pathological hallmark of MSA",
                "Unlike Parkinson's (Lewy bodies in neurons), MSA primarily involves alpha-synuclein aggregation in glial support cells",
                "Widespread demyelination occurs as affected oligodendrocytes fail to maintain nerve fiber insulation",
                "The striatonigral and olivopontocerebellar systems are selectively vulnerable, though considerable overlap exists",
                "Autonomic nuclei in the brainstem and spinal cord intermediolateral column are consistently affected regardless of subtype",
                "Alpha-synuclein strains in MSA differ structurally from those in Parkinson's disease and may be more aggressive in their cell-to-cell spread"
            ]
        ),
        treatment: TreatmentContent(
            intro: "There is currently no cure or disease-modifying treatment for MSA. Management focuses on relieving symptoms and maintaining quality of life. Treatment requires a multidisciplinary approach due to the multi-system nature of the disease.",
            biomarkers: [
                BiomarkerInfo(
                    name: "Alpha-Synuclein Seed Amplification Assay (SAA)",
                    whatItIs: "A laboratory test that detects misfolded alpha-synuclein protein in cerebrospinal fluid. Emerging evidence suggests MSA-associated alpha-synuclein strains may have distinct amplification characteristics compared to Parkinson's disease.",
                    whyItMatters: "May help distinguish MSA from Parkinson's disease during life, which is currently challenging. Research is ongoing to refine the ability to differentiate synuclein strains between the two diseases.",
                    prevalence: "Detectable in the majority of MSA patients, though sensitivity is still being established"
                ),
                BiomarkerInfo(
                    name: "Brain MRI — Structural Patterns",
                    whatItIs: "MRI can reveal characteristic atrophy patterns: putaminal atrophy with a slit-like hyperintense rim in MSA-P, and cerebellar and pontine atrophy with the 'hot cross bun sign' in MSA-C.",
                    whyItMatters: "These imaging findings, while not always present early, can support the clinical diagnosis and help differentiate MSA from Parkinson's disease. The hot cross bun sign is fairly specific but not exclusive to MSA.",
                    prevalence: "Hot cross bun sign seen in approximately 50-80% of MSA-C patients on MRI"
                ),
                BiomarkerInfo(
                    name: "Autonomic Function Testing",
                    whatItIs: "A battery of tests measuring cardiovascular reflexes (tilt table test), thermoregulatory sweat test, and urodynamic studies to objectively quantify autonomic nervous system failure.",
                    whyItMatters: "Documenting severe, early autonomic failure is a key diagnostic criterion for MSA and helps distinguish it from Parkinson's disease, where autonomic dysfunction is typically milder and occurs later.",
                    prevalence: "Abnormal in virtually all MSA patients at diagnosis"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Initial Symptom Management",
                    timeline: "At diagnosis and early disease",
                    whatHappens: [
                        "Trial of levodopa/carbidopa — some MSA-P patients may have a modest initial response, though it typically wanes",
                        "Midodrine and/or droxidopa to raise blood pressure and reduce orthostatic hypotension",
                        "Fludrocortisone to increase blood volume and support blood pressure",
                        "Behavioral strategies: increased salt and fluid intake, compression stockings, sleeping with head of bed elevated"
                    ],
                    whatToExpect: [
                        "Levodopa response is usually poor or short-lived (unlike Parkinson's disease)",
                        "Blood pressure management is often the most impactful early intervention",
                        "Patients may need to stand up slowly and avoid prolonged standing",
                        "Regular follow-up with a movement disorder specialist every 3-6 months"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Expanding Supportive Care",
                    timeline: "1-3 years after diagnosis",
                    whatHappens: [
                        "Physical therapy for gait training, balance exercises, and fall prevention",
                        "Occupational therapy for adaptive equipment and daily activity strategies",
                        "Speech therapy for dysarthria and early swallowing evaluation",
                        "Bladder management: intermittent catheterization or medications (e.g., mirabegron) for urinary symptoms"
                    ],
                    whatToExpect: [
                        "Progressive difficulty with balance and walking — assistive devices may become necessary",
                        "Speech may become increasingly difficult to understand",
                        "Autonomic symptoms typically worsen and require ongoing medication adjustments",
                        "Maintaining activity and mobility as long as possible improves overall well-being"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Advanced Disease Management",
                    timeline: "3-7 years after diagnosis",
                    whatHappens: [
                        "CPAP or BiPAP for stridor and sleep-disordered breathing (stridor can be life-threatening)",
                        "PEG tube (feeding tube) consideration if swallowing becomes unsafe",
                        "Wheelchair or other mobility aids as gait deteriorates",
                        "Suprapubic catheter for refractory bladder issues"
                    ],
                    whatToExpect: [
                        "Most patients will require wheelchair assistance within 5 years of symptom onset",
                        "Stridor monitoring is important as it can cause sudden respiratory compromise",
                        "Swallowing evaluation helps prevent aspiration pneumonia",
                        "Palliative care involvement can significantly improve comfort and quality of life"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Comprehensive and Palliative Care",
                    timeline: "Ongoing throughout disease course",
                    whatHappens: [
                        "Multidisciplinary team coordination: neurologist, urologist, cardiologist, pulmonologist, palliative care",
                        "Caregiver education and respite support — MSA places a heavy burden on caregivers",
                        "Advance care planning discussions and goals of care conversations",
                        "Clinical trial participation — several disease-modifying therapies are under investigation"
                    ],
                    whatToExpect: [
                        "Disease progression is relentless but the rate varies between individuals",
                        "Maintaining dignity, comfort, and quality of life are the central goals of care",
                        "Research into MSA is accelerating, with immunotherapy and gene therapy approaches in early trials",
                        "Support organizations (The MSA Coalition, Defeat MSA Alliance) provide valuable resources for patients and families"
                    ]
                )
            ]
        )
    )
}
