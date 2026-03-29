// HuntingtonsData.swift
// Static learning content for the Huntington's disease module.

import Foundation

extension DiseaseContent {
    static let huntingtons = DiseaseContent(
        id: "huntingtons",
        overview: OverviewContent(
            whatIsIt: [
                "Huntington's disease (HD) is a progressive, inherited neurodegenerative disorder caused by a mutation in the HTT gene on chromosome 4. This mutation involves an abnormal expansion of CAG trinucleotide repeats, which produces a toxic form of the huntingtin protein that gradually damages brain cells.",
                "The disease causes a devastating triad of motor dysfunction (chorea — involuntary jerking movements), cognitive decline, and psychiatric disturbances. Because it is autosomal dominant, each child of an affected parent has a 50% chance of inheriting the mutation. Symptoms typically emerge between ages 30 and 50, though juvenile forms exist."
            ],
            keyStatistics: [
                "~30,000 Americans currently symptomatic",
                "~200,000 more at risk of inheriting the gene",
                "Prevalence: 3-7 per 100,000 in Western populations",
                "Average age of onset: 35-44 years; average survival 15-20 years after onset"
            ],
            howItDevelops: "Huntington's disease presents in different forms based on age of onset:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Adult-Onset Huntington's",
                    percentage: "~95% of cases",
                    description: "Symptoms typically appear between ages 30 and 50. Chorea is the hallmark motor symptom. Gradual progression over 15-20 years. CAG repeat length usually 40-55."
                ),
                DiseaseTypeInfo(
                    name: "Juvenile Huntington's Disease",
                    percentage: "~5% of cases",
                    description: "Onset before age 20, often inherited from the father due to CAG repeat expansion during spermatogenesis. Presents with rigidity and dystonia rather than chorea. Seizures are common. Progresses faster, with CAG repeats typically >60."
                ),
                DiseaseTypeInfo(
                    name: "Late-Onset Huntington's",
                    percentage: "Rare subset",
                    description: "Symptoms begin after age 60. Tends to progress more slowly with milder symptoms. Often has CAG repeats in the lower abnormal range (36-39). May be underdiagnosed due to overlap with other age-related conditions."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets Huntington's Disease?",
            ageDistribution: [
                AgeGroupInfo(range: "Under 20", percentage: 5),
                AgeGroupInfo(range: "20-39", percentage: 30),
                AgeGroupInfo(range: "40-59", percentage: 50),
                AgeGroupInfo(range: "60+", percentage: 15)
            ],
            peakAge: "35-44 years at symptom onset",
            genderMale: 52,
            genderFemale: 48,
            genderExplanation: "Affects males and females nearly equally, as the HTT gene is on chromosome 4 (autosomal). Slight male predominance may reflect earlier onset in paternal inheritance due to CAG repeat instability during spermatogenesis.",
            geographicHigher: [
                RegionInfo(region: "Western Europe & North America", rate: "5-7 per 100,000"),
                RegionInfo(region: "Australia", rate: "5-6 per 100,000")
            ],
            geographicLower: [
                RegionInfo(region: "East Asia (Japan, China)", rate: "0.5-1 per 100,000"),
                RegionInfo(region: "Sub-Saharan Africa", rate: "< 1 per 100,000 (limited data)")
            ],
            geographicNote: "The higher prevalence in Western populations is thought to reflect the historical origin and spread of the HTT gene mutation. Lower rates in East Asia and Africa appear to be genuinely lower rather than due to underdiagnosis alone.",
            confirmedRisks: [
                "Family history — the only definitive risk factor (autosomal dominant inheritance)",
                "CAG repeat length of 40 or more in HTT gene (full penetrance — disease will develop)",
                "Longer CAG repeats correlate with earlier onset and faster progression",
                "Paternal inheritance increases risk of CAG expansion (anticipation)"
            ],
            unconfirmedFactors: [
                "Environmental modifiers of age of onset (lifestyle, stress, toxin exposure)",
                "Genetic modifiers on other chromosomes (DNA repair pathway genes under investigation)",
                "CAG repeats of 36-39 (reduced penetrance — may or may not develop symptoms)",
                "Somatic CAG repeat expansion in the brain over time (active area of research)"
            ],
            importantNote: "Huntington's disease is one of the few neurological conditions where a definitive predictive genetic test is available. A CAG repeat count of 40 or more means the person will develop the disease. This raises profound ethical considerations — genetic counseling is essential before testing."
        ),
        symptoms: SymptomsContent(
            disclaimer: "These symptoms can occur with many conditions. Only a neurologist with expertise in movement disorders can diagnose Huntington's disease. Genetic testing provides definitive confirmation.",
            variabilityNote: "Huntington's symptoms develop gradually and worsen over 15-20 years. Psychiatric symptoms often precede motor symptoms by several years:",
            mostFrequent: [
                SymptomInfo(
                    name: "Chorea (Involuntary Movements)",
                    details: [
                        "Irregular, flowing, dance-like involuntary movements",
                        "Often begins subtly — fidgeting, restlessness, clumsiness",
                        "Progresses to involve face, trunk, and all limbs",
                        "Peaks in mid-stage disease, then may be replaced by rigidity in late stages"
                    ]
                ),
                SymptomInfo(
                    name: "Cognitive Decline",
                    details: [
                        "Difficulty with planning, organizing, and multitasking (executive dysfunction)",
                        "Slowed thinking and processing speed",
                        "Impaired judgment and lack of awareness of deficits",
                        "Progressive decline toward dementia in later stages"
                    ]
                ),
                SymptomInfo(
                    name: "Psychiatric Symptoms",
                    details: [
                        "Depression — most common psychiatric feature, affects up to 50% of patients",
                        "Irritability, agitation, and explosive temper",
                        "Apathy and social withdrawal",
                        "Anxiety, obsessive-compulsive behaviors, and rarely psychosis"
                    ]
                )
            ],
            common: [
                "Difficulty with balance, walking, and frequent falls",
                "Dysarthria — slurred, slow, or imprecise speech",
                "Dysphagia — difficulty swallowing, increasing aspiration risk",
                "Unintentional weight loss despite adequate caloric intake",
                "Sleep disturbances and disrupted circadian rhythm",
                "Impaired eye movements (slow saccades) — often an early clinical sign"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Caudate Nucleus & Putamen (striatum)", symptoms: "Chorea, loss of motor coordination, cognitive inflexibility — from death of medium spiny neurons (95% of striatal neuron loss)"),
                LocationSymptomInfo(location: "Frontal Cortex", symptoms: "Executive dysfunction, poor judgment, personality changes, apathy — due to disrupted frontostriatal circuits"),
                LocationSymptomInfo(location: "Insular Cortex & Limbic System", symptoms: "Psychiatric symptoms: depression, irritability, anxiety, emotional dysregulation, loss of empathy"),
                LocationSymptomInfo(location: "Hypothalamus & Brainstem", symptoms: "Weight loss, sleep disturbances, autonomic dysfunction, swallowing difficulties in advanced disease")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "How Huntington's Disease Affects the Brain",
            commonLocations: [
                BrainLocationInfo(region: "Caudate Nucleus", percentage: "Earliest & most affected", description: "One of the first structures to degenerate. Loss of medium spiny neurons disrupts motor planning and cognitive circuits. Caudate atrophy is visible on MRI."),
                BrainLocationInfo(region: "Putamen", percentage: "Early involvement", description: "Together with the caudate, forms the striatum. Degeneration here directly causes chorea and motor coordination problems."),
                BrainLocationInfo(region: "Globus Pallidus", percentage: "Progressive involvement", description: "Part of the basal ganglia circuit. Disrupted output from damaged striatum leads to uncontrolled movement signals."),
                BrainLocationInfo(region: "Cerebral Cortex", percentage: "Mid-Late stage", description: "Cortical thinning progresses from posterior to anterior. Correlates with cognitive decline and personality changes."),
                BrainLocationInfo(region: "White Matter Tracts", percentage: "Throughout disease", description: "Connections between brain regions degrade, contributing to slowed processing and loss of coordination between brain areas.")
            ],
            characteristics: [
                "Selective vulnerability — medium spiny neurons in the striatum are disproportionately affected despite mutant huntingtin being expressed throughout the body",
                "Caudate nucleus atrophy causes characteristic 'box-car' shaped lateral ventricles on brain imaging",
                "Total brain volume can decrease by 20-30% over the disease course",
                "Mutant huntingtin protein forms intracellular aggregates (inclusion bodies) that disrupt cellular function",
                "Degeneration follows a predictable pattern: striatum first, then cortex, then deep brain structures"
            ]
        ),
        treatment: TreatmentContent(
            intro: "There is currently no cure or disease-modifying therapy for Huntington's disease. Treatment focuses on managing symptoms and maintaining quality of life. Genetic counseling is a critical component of care for affected families.",
            biomarkers: [
                BiomarkerInfo(
                    name: "HTT Gene CAG Repeat Length",
                    whatItIs: "A genetic test that counts the number of CAG trinucleotide repeats in the HTT gene. Normal: <27 repeats. Intermediate: 27-35. Reduced penetrance: 36-39. Full penetrance: 40+.",
                    whyItMatters: "Provides a definitive diagnosis. Longer repeat lengths predict earlier onset. A person with 40+ repeats will develop HD if they live long enough. Enables pre-symptomatic testing for at-risk family members.",
                    prevalence: "Present in 100% of Huntington's patients"
                ),
                BiomarkerInfo(
                    name: "Neurofilament Light Chain (NfL)",
                    whatItIs: "A protein released into cerebrospinal fluid and blood when neurons are damaged. Measured via blood test or lumbar puncture.",
                    whyItMatters: "Elevated levels correlate with disease stage and progression rate. Being used as an outcome measure in clinical trials. Can detect neurodegeneration before symptom onset in gene carriers.",
                    prevalence: "Elevated in symptomatic HD and rising in premanifest carriers"
                ),
                BiomarkerInfo(
                    name: "Mutant Huntingtin Protein (mHTT)",
                    whatItIs: "Direct measurement of the toxic mutant huntingtin protein in cerebrospinal fluid. Experimental assays can quantify levels.",
                    whyItMatters: "Target engagement biomarker for huntingtin-lowering therapies (antisense oligonucleotides, gene silencing). Reduction in mHTT CSF levels would confirm that a therapy is reaching its target.",
                    prevalence: "Detectable in CSF of all HD gene carriers"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Genetic Counseling & Pre-symptomatic Phase",
                    timeline: "Before and at genetic testing",
                    whatHappens: [
                        "Genetic counseling to discuss implications of testing for individual and family",
                        "Pre-test psychological evaluation and support",
                        "Predictive genetic testing for at-risk individuals (voluntary, never coerced)",
                        "Baseline neurological and psychiatric assessments for gene carriers"
                    ],
                    whatToExpect: [
                        "Decision to test is deeply personal — many at-risk individuals choose not to know",
                        "Results take 2-4 weeks; follow-up counseling is essential",
                        "Genetic discrimination protections exist (GINA Act) but have limitations",
                        "Pre-symptomatic carriers may be eligible for clinical trials"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Early Symptom Management",
                    timeline: "At symptom onset",
                    whatHappens: [
                        "Tetrabenazine or deutetrabenazine (Austedo) for chorea — FDA-approved for HD chorea",
                        "Antidepressants (SSRIs, SNRIs) for depression and anxiety",
                        "Behavioral interventions for irritability and mood changes",
                        "Physical therapy, occupational therapy, and speech therapy initiation"
                    ],
                    whatToExpect: [
                        "Vesicular monoamine transporter 2 (VMAT2) inhibitors reduce chorea significantly",
                        "Side effects of tetrabenazine: drowsiness, depression, parkinsonism — requires careful dose titration",
                        "Depression treatment is critical — suicide risk is elevated in HD",
                        "Exercise and physical activity help maintain function and may slow decline"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Progressive Symptom Management",
                    timeline: "Mid-stage disease",
                    whatHappens: [
                        "Medication adjustments as symptoms evolve (chorea may decrease, rigidity may increase)",
                        "Swallowing evaluation and dietary modifications to prevent aspiration",
                        "Fall prevention strategies and home safety modifications",
                        "Cognitive rehabilitation and structured daily routines"
                    ],
                    whatToExpect: [
                        "Increased assistance needed for daily activities",
                        "Weight management becomes important — high caloric needs due to constant movement",
                        "Communication aids may become necessary as speech deteriorates",
                        "Caregiver support and respite care become increasingly important"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Comprehensive & Palliative Care",
                    timeline: "Late stage and ongoing",
                    whatHappens: [
                        "Full-time care with multidisciplinary team (neurology, psychiatry, PT, OT, speech, nutrition, social work)",
                        "Feeding tube consideration for severe dysphagia and weight loss",
                        "Advanced care planning and goals-of-care discussions",
                        "Palliative care to optimize comfort and quality of life"
                    ],
                    whatToExpect: [
                        "Late-stage patients are fully dependent for all activities of daily living",
                        "Most common causes of death: pneumonia (aspiration), heart disease, and complications of falls",
                        "Active research in huntingtin-lowering therapies (gene silencing, ASOs) offers future hope",
                        "Family support, genetic counseling for children, and bereavement services are essential"
                    ]
                )
            ]
        )
    )
}
