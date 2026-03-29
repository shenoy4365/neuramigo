// AlzheimersData.swift
// Static learning content for the Alzheimer's disease module.

import Foundation

extension DiseaseContent {
    static let alzheimers = DiseaseContent(
        id: "alzheimers",
        overview: OverviewContent(
            whatIsIt: [
                "Alzheimer's disease is a progressive neurodegenerative disorder and the most common cause of dementia, accounting for 60-80% of all dementia cases. It gradually destroys memory, thinking skills, and eventually the ability to carry out simple daily tasks.",
                "The disease is characterized by the buildup of two abnormal proteins in the brain: amyloid-beta plaques (which accumulate between neurons) and tau tangles (which form inside neurons). These proteins disrupt cell communication and trigger inflammation, leading to progressive brain cell death."
            ],
            keyStatistics: [
                "~6.9 million Americans living with Alzheimer's (2024)",
                "6th leading cause of death in the United States",
                "1 in 3 seniors dies with Alzheimer's or another dementia",
                "Average duration from diagnosis: 4-8 years, but can last up to 20"
            ],
            howItDevelops: "Alzheimer's disease progresses through distinct stages:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Early-Onset Alzheimer's",
                    percentage: "~5% of cases",
                    description: "Diagnosed before age 65, sometimes as early as 30s-40s. Often has a stronger genetic component (APP, PSEN1, PSEN2 mutations). Progresses faster than late-onset."
                ),
                DiseaseTypeInfo(
                    name: "Late-Onset Alzheimer's",
                    percentage: "~95% of cases",
                    description: "Diagnosed at age 65 or older. Caused by a complex interplay of genetics (APOE4 being the strongest risk factor), lifestyle, and environmental factors. Most common form."
                ),
                DiseaseTypeInfo(
                    name: "Familial Alzheimer's Disease",
                    percentage: "<1% of all cases",
                    description: "Caused by deterministic gene mutations (APP, PSEN1, PSEN2) that virtually guarantee disease development. Autosomal dominant inheritance — 50% chance of passing to each child."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets Alzheimer's Disease?",
            ageDistribution: [
                AgeGroupInfo(range: "Under 65", percentage: 5),
                AgeGroupInfo(range: "65-74", percentage: 15),
                AgeGroupInfo(range: "75-84", percentage: 45),
                AgeGroupInfo(range: "85+", percentage: 35)
            ],
            peakAge: "Risk doubles every 5 years after age 65",
            genderMale: 35,
            genderFemale: 65,
            genderExplanation: "Nearly two-thirds of Americans with Alzheimer's are women, partly due to longer lifespan and possible hormonal factors",
            geographicHigher: [
                RegionInfo(region: "North America & Western Europe", rate: "5-7% of adults over 60"),
                RegionInfo(region: "Latin America", rate: "Higher than expected for age demographics")
            ],
            geographicLower: [
                RegionInfo(region: "East Asia", rate: "Lower rates reported, possibly underdiagnosed"),
                RegionInfo(region: "Sub-Saharan Africa", rate: "Data limited but appears lower")
            ],
            geographicNote: "Global prevalence is rising as populations age. By 2050, an estimated 139 million people worldwide will be living with dementia, with the steepest increases in low- and middle-income countries.",
            confirmedRisks: [
                "Advanced age (strongest risk factor — risk doubles every 5 years after 65)",
                "Family history (first-degree relative increases risk 2-4x)",
                "APOE4 gene variant (1 copy: 3x risk; 2 copies: 8-12x risk)",
                "Down syndrome (trisomy 21 — APP gene is on chromosome 21)",
                "Cardiovascular risk factors: hypertension, diabetes, obesity, high cholesterol"
            ],
            unconfirmedFactors: [
                "Chronic sleep deprivation (emerging evidence of amyloid clearance during sleep)",
                "Air pollution and environmental toxins",
                "Social isolation and depression",
                "Repeated head injuries (possible link to tau pathology)"
            ],
            importantNote: "While age and genetics are the strongest risk factors, research increasingly shows that up to 40% of dementia cases may be preventable or delayable through addressing modifiable risk factors: education, exercise, social engagement, hearing loss treatment, cardiovascular health management, and cognitive stimulation."
        ),
        symptoms: SymptomsContent(
            disclaimer: "Memory changes with aging are normal. Only a healthcare provider can determine if symptoms indicate Alzheimer's or another condition. Early evaluation is important.",
            variabilityNote: "Alzheimer's symptoms progress gradually through three broad stages:",
            mostFrequent: [
                SymptomInfo(
                    name: "Memory Loss (Early Stage)",
                    details: [
                        "Forgetting recently learned information",
                        "Asking the same questions repeatedly",
                        "Misplacing items and being unable to retrace steps",
                        "Difficulty remembering names of new acquaintances"
                    ]
                ),
                SymptomInfo(
                    name: "Confusion & Disorientation (Middle Stage)",
                    details: [
                        "Getting lost in familiar places",
                        "Losing track of dates, seasons, and time passage",
                        "Difficulty with planning, organizing, or following sequences",
                        "Problems managing finances or medications"
                    ]
                ),
                SymptomInfo(
                    name: "Behavioral & Personality Changes",
                    details: [
                        "Withdrawal from social activities and hobbies",
                        "Mood swings, anxiety, and increased agitation",
                        "Suspicion or paranoia toward family and caregivers",
                        "Sundowning — increased confusion in late afternoon/evening"
                    ]
                )
            ],
            common: [
                "Difficulty with word-finding and following conversations",
                "Impaired judgment and decision-making",
                "Trouble completing familiar multi-step tasks",
                "Changes in sleep patterns",
                "Wandering and getting lost",
                "Difficulty recognizing faces of family and friends (later stages)"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Hippocampus & Entorhinal Cortex (earliest)", symptoms: "Memory formation impairment — forgetting new information while older memories remain intact initially"),
                LocationSymptomInfo(location: "Temporal & Parietal Lobes", symptoms: "Language difficulties, spatial disorientation, inability to recognize objects or faces (agnosia)"),
                LocationSymptomInfo(location: "Frontal Lobe", symptoms: "Executive function loss, personality changes, impaired judgment, loss of social awareness"),
                LocationSymptomInfo(location: "Global Cortical Atrophy (late stage)", symptoms: "Loss of motor functions, inability to communicate, dependence for all activities of daily living")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "How Alzheimer's Affects the Brain",
            commonLocations: [
                BrainLocationInfo(region: "Hippocampus", percentage: "Earliest affected", description: "Memory center — shrinks up to 25% before symptoms appear. First region to show tau tangles."),
                BrainLocationInfo(region: "Entorhinal Cortex", percentage: "Very early", description: "Gateway between hippocampus and neocortex. Among the first areas to degenerate."),
                BrainLocationInfo(region: "Temporal & Parietal Lobes", percentage: "Early-Mid stage", description: "Language, spatial awareness, and complex reasoning progressively affected."),
                BrainLocationInfo(region: "Frontal Lobe", percentage: "Mid-Late stage", description: "Personality, judgment, and executive function decline as disease spreads forward."),
                BrainLocationInfo(region: "Whole Brain", percentage: "Late stage", description: "Severe global atrophy — brain can lose up to one-third of its volume. Ventricles enlarge dramatically.")
            ],
            characteristics: [
                "Amyloid-beta plaques accumulate between neurons, disrupting cell-to-cell communication",
                "Tau protein tangles form inside neurons, destroying the internal transport system",
                "Brain inflammation (neuroinflammation) amplifies damage through activated microglia",
                "Synaptic loss precedes neuron death — cognitive decline begins before cells die",
                "Disease spreads in a predictable pattern from hippocampus outward (Braak staging)",
                "Total brain volume decreases significantly — visible on MRI as widened sulci and enlarged ventricles"
            ]
        ),
        treatment: TreatmentContent(
            intro: "While there is no cure for Alzheimer's, treatments can slow progression, manage symptoms, and improve quality of life. Recent breakthroughs in anti-amyloid therapies represent a new era.",
            biomarkers: [
                BiomarkerInfo(
                    name: "Amyloid PET / CSF Amyloid-beta",
                    whatItIs: "Amyloid PET scans or cerebrospinal fluid tests detect amyloid-beta protein accumulation in the brain, often years before symptoms appear.",
                    whyItMatters: "Confirms Alzheimer's diagnosis (vs. other dementias). Required for eligibility for new anti-amyloid therapies (lecanemab, donanemab). Can detect disease 15-20 years before symptoms.",
                    prevalence: "Positive in essentially all Alzheimer's patients"
                ),
                BiomarkerInfo(
                    name: "Tau PET / CSF Phospho-tau",
                    whatItIs: "Detects tau protein tangles in the brain. Phosphorylated tau (p-tau) in CSF or blood is increasingly used as a diagnostic marker.",
                    whyItMatters: "Tau burden correlates better with cognitive decline than amyloid. Blood p-tau217 tests are emerging as simple, accurate screening tools.",
                    prevalence: "Elevated in most Alzheimer's patients"
                ),
                BiomarkerInfo(
                    name: "APOE Genotype",
                    whatItIs: "The APOE gene has three variants: e2 (protective), e3 (neutral), and e4 (increased risk). Genotyping identifies individual risk.",
                    whyItMatters: "APOE4 carriers have higher risk and may respond differently to anti-amyloid therapies (higher risk of side effects like ARIA — amyloid-related imaging abnormalities).",
                    prevalence: "~25% of population carries at least one APOE4 allele"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Diagnosis & Early Intervention",
                    timeline: "At symptom onset",
                    whatHappens: [
                        "Comprehensive neurological and cognitive evaluation",
                        "Brain MRI to assess atrophy and rule out other causes",
                        "Biomarker testing (amyloid PET, CSF, or blood tests)",
                        "Genetic counseling if early-onset or strong family history"
                    ],
                    whatToExpect: [
                        "Evaluation process takes several visits over weeks",
                        "Early diagnosis allows time for planning and treatment",
                        "Legal and financial planning while decision-making capacity remains",
                        "Connection to support resources and clinical trials"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Disease-Modifying Therapies",
                    timeline: "Early stages (if eligible)",
                    whatHappens: [
                        "Anti-amyloid antibodies: lecanemab (Leqembi) — FDA approved, slows decline ~27%",
                        "Donanemab — reduces amyloid plaques, slowed decline ~35% in trials",
                        "IV infusions every 2-4 weeks at infusion centers",
                        "Regular MRI monitoring for ARIA (brain swelling or microbleeds)"
                    ],
                    whatToExpect: [
                        "Eligibility: early-stage Alzheimer's with confirmed amyloid pathology",
                        "ARIA side effects in ~20-35% (mostly asymptomatic, detected on MRI)",
                        "Modest but meaningful slowing of cognitive decline",
                        "Ongoing treatment for 12-18 months or longer"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Symptomatic Medications",
                    timeline: "Throughout disease course",
                    whatHappens: [
                        "Cholinesterase inhibitors (donepezil, rivastigmine, galantamine) for mild-moderate stages",
                        "Memantine (Namenda) for moderate-severe stages",
                        "Medications for behavioral symptoms (anxiety, agitation, sleep disruption)",
                        "Non-pharmacological interventions: cognitive stimulation, exercise, music therapy"
                    ],
                    whatToExpect: [
                        "Modest improvement in cognition and daily function (temporary)",
                        "Side effects: nausea, diarrhea, dizziness (usually mild)",
                        "Benefits may plateau after 6-12 months",
                        "Combination therapy (cholinesterase inhibitor + memantine) often used"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Supportive & Caregiver Care",
                    timeline: "Throughout disease and beyond",
                    whatHappens: [
                        "Progressive care planning as needs increase",
                        "Home safety modifications and assistive technology",
                        "Caregiver support programs, respite care, and counseling",
                        "Eventual transition to structured care environments if needed"
                    ],
                    whatToExpect: [
                        "Caregiver burden is significant — support is essential",
                        "Adult day programs can provide stimulation and socialization",
                        "Hospice care appropriate in late stages for comfort focus",
                        "Ongoing research offers hope for future prevention and treatment"
                    ]
                )
            ]
        )
    )
}
