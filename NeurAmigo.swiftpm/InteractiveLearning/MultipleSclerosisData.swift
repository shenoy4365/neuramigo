// MultipleSclerosisData.swift
// Static learning content for the multiple sclerosis (MS) disease module.

import Foundation

extension DiseaseContent {
    static let multipleSclerosis = DiseaseContent(
        id: "multiple_sclerosis",
        overview: OverviewContent(
            whatIsIt: [
                "Multiple sclerosis (MS) is a chronic autoimmune disease in which the body's immune system mistakenly attacks myelin — the protective fatty coating that insulates nerve fibers in the brain and spinal cord. Myelin works like the insulation on an electrical wire: when it is damaged (demyelination), nerve signals slow down, become distorted, or are blocked entirely. Over time, the underlying nerve fibers themselves can also be damaged (axonal loss), leading to irreversible disability.",
                "MS is the most common disabling neurological disease of young adults. It is highly variable: some people experience mild symptoms and long periods of stability, while others develop progressive disability. Advances in disease-modifying therapies have dramatically changed the outlook, and most people diagnosed today can expect a near-normal lifespan with appropriate treatment."
            ],
            keyStatistics: [
                "~1 million Americans living with MS",
                "~2.8 million people affected worldwide",
                "Most commonly diagnosed between ages 20-40",
                "Women are affected approximately 3 times more often than men",
                "Average time from symptom onset to diagnosis: 1-2 years",
                "Life expectancy is 5-10 years shorter than general population (gap narrowing with modern therapies)"
            ],
            howItDevelops: "Multiple sclerosis is classified into four main subtypes based on disease course:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Relapsing-Remitting MS (RRMS)",
                    percentage: "~85% of initial diagnoses",
                    description: "Characterized by clearly defined relapses (flare-ups) of new or worsening neurological symptoms, followed by periods of partial or complete recovery (remissions). Between relapses, the disease does not appear to progress. Most people with RRMS eventually transition to SPMS."
                ),
                DiseaseTypeInfo(
                    name: "Secondary Progressive MS (SPMS)",
                    percentage: "Develops from RRMS",
                    description: "After an initial relapsing-remitting course, disability begins to accumulate steadily regardless of relapses. Approximately 50% of untreated RRMS patients transition to SPMS within 10-15 years. Modern disease-modifying therapies significantly delay this transition."
                ),
                DiseaseTypeInfo(
                    name: "Primary Progressive MS (PPMS)",
                    percentage: "~10-15% of cases",
                    description: "Steady worsening of neurological function from the onset without distinct relapses or remissions. Tends to have equal sex distribution, later onset (average age 40+), and predominantly spinal cord involvement. Fewer treatment options, though ocrelizumab is approved for PPMS."
                ),
                DiseaseTypeInfo(
                    name: "Progressive-Relapsing MS (PRMS)",
                    percentage: "~5% of cases",
                    description: "The rarest form. Steadily worsening disease from onset with superimposed acute relapses. May or may not have recovery after relapses, but the disease continues to progress between them. Now sometimes classified under PPMS with activity."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets Multiple Sclerosis?",
            ageDistribution: [
                AgeGroupInfo(range: "Under 18", percentage: 5),
                AgeGroupInfo(range: "18-29", percentage: 30),
                AgeGroupInfo(range: "30-39", percentage: 30),
                AgeGroupInfo(range: "40-49", percentage: 20),
                AgeGroupInfo(range: "50+", percentage: 15)
            ],
            peakAge: "20-40 years at diagnosis",
            genderMale: 25,
            genderFemale: 75,
            genderExplanation: "Women are approximately 3 times more likely to develop RRMS. This ratio has been increasing over recent decades, suggesting environmental factors may be interacting with sex-based immune differences. In PPMS, the sex ratio is closer to 1:1.",
            geographicHigher: [
                RegionInfo(region: "Northern Europe (Scandinavia, Scotland)", rate: "~200+ per 100,000"),
                RegionInfo(region: "Canada", rate: "~290 per 100,000 — among the highest globally"),
                RegionInfo(region: "Northern United States", rate: "~150-200 per 100,000")
            ],
            geographicLower: [
                RegionInfo(region: "Equatorial regions (Sub-Saharan Africa, Southeast Asia)", rate: "~2-10 per 100,000"),
                RegionInfo(region: "East Asia (Japan, China)", rate: "~5-10 per 100,000")
            ],
            geographicNote: "MS follows a striking latitude gradient: prevalence increases with distance from the equator. This pattern strongly implicates sunlight exposure and vitamin D in disease risk. People who migrate from high-risk to low-risk areas before adolescence adopt the lower risk of their new home, suggesting a critical environmental exposure window in childhood.",
            confirmedRisks: [
                "Epstein-Barr virus (EBV) infection — risk increases 32-fold after EBV infection; nearly 100% of MS patients are EBV-positive",
                "Low vitamin D levels and reduced sunlight exposure (latitude gradient)",
                "Female sex (3:1 ratio in RRMS)",
                "Family history (first-degree relative increases risk 20-40x vs general population)",
                "HLA-DRB1*15:01 genetic variant — strongest single genetic risk factor (3x increased risk)",
                "Cigarette smoking (increases risk 1.5x and accelerates progression)",
                "Obesity during adolescence"
            ],
            unconfirmedFactors: [
                "Gut microbiome composition and diversity",
                "Salt intake and Western diet",
                "Organic solvent exposure",
                "Shift work and circadian rhythm disruption",
                "Concussion and head trauma history"
            ],
            importantNote: "The discovery that EBV infection is likely a necessary (but not sufficient) precursor to MS was one of the most significant breakthroughs in MS research. A landmark 2022 study of 10 million military personnel showed that the risk of MS increased 32-fold after EBV infection. This has opened new avenues for prevention, including the development of EBV vaccines."
        ),
        symptoms: SymptomsContent(
            disclaimer: "MS symptoms vary widely between individuals and over time. Many of these symptoms can occur with other conditions. A neurologist should evaluate any concerning neurological symptoms, especially in young adults.",
            variabilityNote: "MS can affect almost any part of the central nervous system, producing a remarkable variety of symptoms. The pattern of symptoms depends on which nerve fibers are demyelinated:",
            mostFrequent: [
                SymptomInfo(
                    name: "Optic Neuritis",
                    details: [
                        "Inflammation of the optic nerve — often the first symptom of MS",
                        "Painful eye movement with blurred or lost vision, usually in one eye",
                        "Colors may appear washed out (desaturated), especially red",
                        "Vision typically recovers over weeks to months, but subtle deficits may persist"
                    ]
                ),
                SymptomInfo(
                    name: "Sensory Symptoms",
                    details: [
                        "Numbness and tingling (paresthesias) in limbs, trunk, or face",
                        "Lhermitte's sign — an electric shock sensation running down the spine when bending the neck forward",
                        "MS hug (banding sensation) — a squeezing feeling around the torso from spinal cord lesions",
                        "Altered temperature perception and neuropathic pain"
                    ]
                ),
                SymptomInfo(
                    name: "Fatigue & Cognitive Changes",
                    details: [
                        "MS fatigue is the most commonly reported symptom (75-95% of patients) and often the most disabling",
                        "Unlike ordinary tiredness, it is disproportionate to activity level and worsened by heat (Uhthoff's phenomenon)",
                        "Cognitive fog affects processing speed, attention, and working memory in 40-65% of patients",
                        "Depression occurs in approximately 50% of MS patients — higher than in other chronic diseases"
                    ]
                )
            ],
            common: [
                "Spasticity and muscle stiffness, especially in the legs",
                "Gait difficulty and balance problems (cerebellar ataxia)",
                "Bladder dysfunction — urgency, frequency, or retention in up to 80% of patients",
                "Intention tremor and coordination problems",
                "Heat sensitivity (Uhthoff's phenomenon) — symptoms temporarily worsen with elevated body temperature",
                "Speech changes including slurred speech (dysarthria) and scanning speech"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Optic Nerves", symptoms: "Optic neuritis — painful vision loss, color desaturation. The optic nerve is one of the most commonly affected sites in MS and may be involved at first presentation"),
                LocationSymptomInfo(location: "Spinal Cord (especially cervical)", symptoms: "Lhermitte's sign, MS hug, limb weakness, spasticity, bladder and bowel dysfunction. Transverse myelitis (partial or complete) is a hallmark MS presentation"),
                LocationSymptomInfo(location: "Periventricular White Matter", symptoms: "Cognitive slowing, fatigue, attention deficits. Lesions around the brain's ventricles are the most characteristic finding on MRI and a diagnostic hallmark of MS"),
                LocationSymptomInfo(location: "Brainstem & Cerebellum", symptoms: "Double vision (internuclear ophthalmoplegia), vertigo, nystagmus, ataxia, speech difficulties, facial numbness or trigeminal neuralgia")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "Where MS Affects the Nervous System",
            commonLocations: [
                BrainLocationInfo(region: "Periventricular White Matter", percentage: "Most common", description: "Lesions adjacent to the brain's ventricles are the hallmark of MS on MRI. These Dawson's fingers (ovoid lesions oriented perpendicular to the ventricles along small veins) are highly characteristic and often among the earliest findings."),
                BrainLocationInfo(region: "Juxtacortical / Cortical", percentage: "Common", description: "Lesions at the border of gray and white matter or within the cortex itself. Cortical lesions are increasingly recognized as important contributors to cognitive decline and disability progression but are harder to detect on standard MRI."),
                BrainLocationInfo(region: "Infratentorial (Brainstem & Cerebellum)", percentage: "Common", description: "Lesions in the brainstem cause cranial nerve symptoms such as double vision, facial numbness, and vertigo. Cerebellar lesions produce coordination problems, tremor, and gait instability."),
                BrainLocationInfo(region: "Spinal Cord", percentage: "Very common", description: "Spinal cord lesions (especially cervical) are found in up to 90% of MS patients. They tend to be short-segment (less than two vertebral segments), peripheral, and dorsolateral. Spinal cord lesions contribute significantly to disability."),
                BrainLocationInfo(region: "Optic Nerves", percentage: "Frequently affected", description: "Demyelination of the optic nerve (optic neuritis) is often the presenting feature of MS. Optical coherence tomography (OCT) can detect retinal nerve fiber layer thinning even in eyes without clinical optic neuritis.")
            ],
            characteristics: [
                "MS lesions (plaques) are areas of demyelination, inflammation, and gliosis (scarring) — the 'sclerosis' in the disease name refers to these hardened scars",
                "Lesions disseminate in time and space — meaning they occur in different parts of the CNS at different times (a key diagnostic criterion)",
                "Active lesions show gadolinium enhancement on MRI, indicating blood-brain barrier breakdown and active inflammation",
                "Chronic lesions evolve into 'black holes' on T1 MRI, representing severe tissue destruction and axonal loss",
                "Gray matter atrophy (brain volume loss) occurs from early in the disease and correlates with cognitive decline and physical disability",
                "The 'iceberg effect': conventional MRI reveals only a fraction of the total disease burden — normal-appearing white matter also shows subtle abnormalities on advanced imaging"
            ]
        ),
        treatment: TreatmentContent(
            intro: "MS treatment has been transformed over the past three decades. While there is no cure, disease-modifying therapies (DMTs) can significantly reduce relapse rates, slow disability progression, and decrease new lesion formation on MRI. Treatment strategy is increasingly guided by a 'treat early, treat effectively' approach.",
            biomarkers: [
                BiomarkerInfo(
                    name: "MRI with Gadolinium Enhancement",
                    whatItIs: "The most important tool in MS diagnosis and monitoring. Brain and spinal cord MRI reveals white matter lesions (T2/FLAIR hyperintensities), active inflammation (gadolinium-enhancing lesions), and tissue destruction (T1 black holes).",
                    whyItMatters: "Demonstrates dissemination in space and time — the cornerstone of MS diagnosis (McDonald Criteria). Serial MRI monitoring guides treatment decisions: new or enlarging lesions suggest breakthrough disease activity requiring therapy escalation.",
                    prevalence: "Abnormal brain MRI in >95% of clinically definite MS patients"
                ),
                BiomarkerInfo(
                    name: "Oligoclonal Bands (OCBs) in CSF",
                    whatItIs: "Immunoglobulin bands found in cerebrospinal fluid (via lumbar puncture) that are not present in the blood. They indicate intrathecal (within the CNS) antibody production by B cells.",
                    whyItMatters: "Present in approximately 90-95% of MS patients. Their presence supports the diagnosis and can substitute for dissemination in time in the 2017 McDonald Criteria. Absence of OCBs should prompt consideration of alternative diagnoses.",
                    prevalence: "Positive in ~90-95% of MS patients"
                ),
                BiomarkerInfo(
                    name: "Serum Neurofilament Light Chain (sNfL)",
                    whatItIs: "A blood test measuring neurofilament light chain — a structural protein released from damaged neurons and axons into the cerebrospinal fluid and blood.",
                    whyItMatters: "Emerging as a valuable biomarker for monitoring disease activity and treatment response without repeated MRIs or lumbar punctures. Elevated levels correlate with relapse activity, new MRI lesions, brain atrophy, and disability progression. May be used in the future to guide treatment decisions.",
                    prevalence: "Elevated during active disease; levels decrease with effective DMT treatment"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Acute Relapse Management",
                    timeline: "During active relapses (flare-ups)",
                    whatHappens: [
                        "High-dose IV corticosteroids (methylprednisolone 1g daily for 3-5 days) to reduce inflammation and shorten relapse duration",
                        "Oral corticosteroid taper may follow IV treatment in some cases",
                        "Plasma exchange (plasmapheresis) for severe relapses that do not respond to steroids",
                        "ACTH (Acthar gel) as an alternative to IV steroids in some situations"
                    ],
                    whatToExpect: [
                        "Steroids speed recovery but do not change the ultimate degree of recovery from a relapse",
                        "Most relapses improve over weeks to months, with or without steroid treatment",
                        "Side effects of high-dose steroids include insomnia, mood changes, metallic taste, elevated blood sugar, and fluid retention",
                        "Not all symptom worsening is a true relapse — pseudo-relapses from heat, infection, or stress can mimic new attacks"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Platform (First-Line) Disease-Modifying Therapies",
                    timeline: "Initiated at or soon after diagnosis",
                    whatHappens: [
                        "Injectable DMTs: interferon beta preparations (Avonex, Rebif, Betaseron) reduce relapse rate by approximately 30%",
                        "Glatiramer acetate (Copaxone) — another injectable option with similar efficacy to interferons",
                        "Oral DMTs: dimethyl fumarate (Tecfidera), teriflunomide (Aubagio), fingolimod (Gilenya) — convenient oral options with moderate to high efficacy",
                        "Regular monitoring with MRI, blood work, and clinical assessment"
                    ],
                    whatToExpect: [
                        "These therapies reduce relapse rates by 30-55% depending on the specific medication",
                        "Injectable side effects include injection site reactions, flu-like symptoms (interferons), and skin reactions",
                        "Oral medications have their own profiles: GI side effects (dimethyl fumarate), hair thinning (teriflunomide), first-dose cardiac monitoring (fingolimod)",
                        "If disease activity continues despite first-line therapy, escalation to high-efficacy therapy is recommended"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "High-Efficacy Disease-Modifying Therapies",
                    timeline: "For active or aggressive disease, or increasingly used as first-line",
                    whatHappens: [
                        "Natalizumab (Tysabri) — IV infusion every 4 weeks, reduces relapses by ~68%; requires JC virus antibody monitoring",
                        "Ocrelizumab (Ocrevus) — anti-CD20 B-cell depletion, IV infusion every 6 months; also approved for PPMS",
                        "Alemtuzumab (Lemtrada) — potent immune cell depletion given in two annual courses; reserved for highly active disease due to risk profile",
                        "Ofatumumab (Kesimpta) — self-administered anti-CD20 subcutaneous injection monthly"
                    ],
                    whatToExpect: [
                        "High-efficacy therapies reduce relapse rates by 50-70% and substantially reduce MRI lesion activity",
                        "Natalizumab carries a risk of progressive multifocal leukoencephalopathy (PML) in JC virus-positive patients — risk stratification is essential",
                        "B-cell depleting therapies (ocrelizumab, ofatumumab) carry increased infection risk, particularly upper respiratory and urinary tract infections",
                        "Increasing evidence supports early high-efficacy therapy to prevent irreversible damage before it accumulates"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Comprehensive Symptom Management & Wellness",
                    timeline: "Ongoing throughout the disease course",
                    whatHappens: [
                        "Symptom-specific medications: baclofen or tizanidine for spasticity, amantadine or modafinil for fatigue, anticholinergics for bladder dysfunction",
                        "Physical therapy and regular exercise — shown to improve fatigue, strength, balance, and mood",
                        "Cognitive rehabilitation for processing speed and memory difficulties",
                        "Mental health support: treatment of depression and anxiety, counseling, and support groups"
                    ],
                    whatToExpect: [
                        "MS is increasingly managed by multidisciplinary teams: neurologist, MS nurse, physical therapist, occupational therapist, psychologist, social worker",
                        "Vitamin D supplementation is widely recommended (target 40-60 ng/mL), though optimal dosing is still being studied",
                        "Pregnancy planning is important — many DMTs must be stopped before conception, but pregnancy itself often reduces relapse rates",
                        "Quality of life can be maintained for decades with early, effective treatment and comprehensive supportive care"
                    ]
                )
            ]
        )
    )
}
