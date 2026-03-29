// ALSData.swift
// Static learning content for the ALS (amyotrophic lateral sclerosis) disease module.

import Foundation

extension DiseaseContent {
    static let als = DiseaseContent(
        id: "als",
        overview: OverviewContent(
            whatIsIt: [
                "Amyotrophic lateral sclerosis (ALS), also known as Lou Gehrig's disease, is a progressive neurodegenerative disorder that attacks motor neurons — the nerve cells responsible for controlling voluntary muscle movement. As motor neurons degenerate and die, the brain loses its ability to initiate and control muscle movement.",
                "ALS affects both upper motor neurons (in the brain's motor cortex) and lower motor neurons (in the brainstem and spinal cord). This dual involvement leads to a combination of muscle weakness, wasting, stiffness, and twitching that progressively worsens. Critically, ALS typically spares cognitive function, eye movements, and bladder control until very late stages."
            ],
            keyStatistics: [
                "~5,000 new cases per year in the US (~16,000 living with ALS at any time)",
                "Incidence: ~2 per 100,000 per year worldwide",
                "Median survival: 2-5 years from symptom onset (varies widely)",
                "~10% of patients survive more than 10 years after diagnosis"
            ],
            howItDevelops: "ALS presents in different forms based on where symptoms begin:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Limb-Onset (Spinal) ALS",
                    percentage: "~70% of cases",
                    description: "Begins with weakness in arms or legs — difficulty gripping, lifting, walking, or tripping. Most common presentation. May start asymmetrically in one limb before spreading."
                ),
                DiseaseTypeInfo(
                    name: "Bulbar-Onset ALS",
                    percentage: "~25% of cases",
                    description: "Begins with difficulty speaking (slurred speech) or swallowing. Affects muscles of the mouth, tongue, and throat first. More common in women and older patients. Generally associated with faster progression."
                ),
                DiseaseTypeInfo(
                    name: "Familial ALS",
                    percentage: "~10% of cases",
                    description: "Inherited form caused by known gene mutations (SOD1, C9orf72, FUS, TARDBP). Autosomal dominant in most families. C9orf72 repeat expansion is the most common genetic cause and can also cause frontotemporal dementia."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets ALS?",
            ageDistribution: [
                AgeGroupInfo(range: "Under 40", percentage: 10),
                AgeGroupInfo(range: "40-54", percentage: 20),
                AgeGroupInfo(range: "55-74", percentage: 50),
                AgeGroupInfo(range: "75+", percentage: 20)
            ],
            peakAge: "55-75 years at diagnosis",
            genderMale: 60,
            genderFemale: 40,
            genderExplanation: "1.2-1.5x more common in men, though the gender gap narrows with age. Bulbar-onset ALS is slightly more common in women.",
            geographicHigher: [
                RegionInfo(region: "North America & Northern Europe", rate: "2-3 per 100,000"),
                RegionInfo(region: "Guam & Kii Peninsula, Japan (historically)", rate: "Historically very high rates — Western Pacific ALS cluster")
            ],
            geographicLower: [
                RegionInfo(region: "Asia & Africa", rate: "0.5-1 per 100,000 (likely underdiagnosed)"),
                RegionInfo(region: "South America", rate: "Lower reported rates, limited epidemiological data")
            ],
            geographicNote: "ALS incidence is fairly uniform across Western populations. Historical high-incidence clusters (Guam, Kii Peninsula) have declined, possibly linked to changes in dietary neurotoxin exposure (cycad seeds).",
            confirmedRisks: [
                "Family history of ALS (first-degree relative with ALS increases risk significantly)",
                "C9orf72 hexanucleotide repeat expansion (most common genetic cause, ~40% of familial ALS)",
                "SOD1 gene mutations (~20% of familial ALS, target for tofersen therapy)",
                "Age (peak incidence 55-75 years)",
                "Male sex (overall, though less pronounced than in other neurodegenerative diseases)"
            ],
            unconfirmedFactors: [
                "Military service and combat exposure (2x risk observed in some studies)",
                "Strenuous physical activity and professional athletics (controversial — possible link)",
                "Smoking (modest risk increase in some epidemiological studies)",
                "Pesticide and heavy metal exposure (lead, mercury — inconsistent evidence)"
            ],
            importantNote: "About 90% of ALS cases are sporadic with no clear family history. The remaining 10% are familial, caused by inherited gene mutations. However, with advances in genetic testing, some apparently sporadic cases are found to carry ALS-associated gene variants, blurring the line between sporadic and familial disease."
        ),
        symptoms: SymptomsContent(
            disclaimer: "These symptoms can occur with many conditions. Only a neurologist can diagnose ALS. If experiencing progressive muscle weakness, consult a healthcare provider promptly.",
            variabilityNote: "ALS symptoms reflect the progressive loss of upper and lower motor neurons. Symptoms typically begin focally and spread to adjacent body regions:",
            mostFrequent: [
                SymptomInfo(
                    name: "Muscle Weakness & Wasting",
                    details: [
                        "Progressive, painless weakness that begins in one region and spreads",
                        "Muscle atrophy (visible shrinking) in affected areas",
                        "Difficulty with fine motor tasks: buttoning, writing, gripping",
                        "Foot drop, tripping, or difficulty climbing stairs in leg-onset cases"
                    ]
                ),
                SymptomInfo(
                    name: "Fasciculations & Cramps",
                    details: [
                        "Involuntary muscle twitching visible under the skin (fasciculations)",
                        "Painful muscle cramps, especially at night",
                        "Lower motor neuron sign — indicates nerve-muscle connection breakdown",
                        "Common in arms, legs, shoulders, and tongue"
                    ]
                ),
                SymptomInfo(
                    name: "Spasticity & Hyperreflexia",
                    details: [
                        "Muscle stiffness and resistance to passive movement",
                        "Exaggerated reflexes (brisk deep tendon reflexes)",
                        "Upper motor neuron sign — indicates damage in brain and spinal cord pathways",
                        "Combination of upper and lower motor neuron signs is a hallmark of ALS"
                    ]
                )
            ],
            common: [
                "Speech changes — slurring, slowed speech, nasal quality (dysarthria)",
                "Swallowing difficulties (dysphagia) — coughing or choking when eating",
                "Shortness of breath and reduced respiratory capacity",
                "Excessive drooling (sialorrhea) due to impaired swallowing",
                "Emotional lability (pseudobulbar affect) — involuntary laughing or crying",
                "Weight loss from muscle wasting and swallowing difficulties"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Upper Motor Neurons (Motor Cortex)", symptoms: "Spasticity, hyperreflexia, Babinski sign, slow effortful movements — from corticospinal tract degeneration"),
                LocationSymptomInfo(location: "Lower Motor Neurons (Brainstem)", symptoms: "Bulbar symptoms: speech and swallowing difficulty, tongue atrophy and fasciculations, jaw weakness"),
                LocationSymptomInfo(location: "Lower Motor Neurons (Cervical Spinal Cord)", symptoms: "Arm and hand weakness, muscle wasting in hands (split hand sign), fasciculations in upper limbs"),
                LocationSymptomInfo(location: "Lower Motor Neurons (Lumbar Spinal Cord)", symptoms: "Leg weakness, foot drop, difficulty walking and climbing stairs, muscle cramps in calves and thighs")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "How ALS Affects the Nervous System",
            commonLocations: [
                BrainLocationInfo(region: "Primary Motor Cortex", percentage: "Upper motor neurons", description: "Giant Betz cells and other motor neurons in the precentral gyrus degenerate, disrupting voluntary movement signals."),
                BrainLocationInfo(region: "Corticospinal Tract", percentage: "Major pathway", description: "The nerve fiber highway connecting motor cortex to spinal cord. Degeneration causes spasticity and hyperreflexia."),
                BrainLocationInfo(region: "Brainstem Motor Nuclei", percentage: "Bulbar involvement", description: "Cranial nerve nuclei controlling speech, swallowing, and tongue movement. Affected in bulbar-onset ALS."),
                BrainLocationInfo(region: "Anterior Horn (Spinal Cord)", percentage: "Lower motor neurons", description: "Alpha motor neurons in the ventral horn of the spinal cord die, causing muscle weakness, atrophy, and fasciculations."),
                BrainLocationInfo(region: "Frontotemporal Regions", percentage: "In some patients", description: "Up to 50% of ALS patients show some cognitive or behavioral changes. ~15% develop full frontotemporal dementia (ALS-FTD).")
            ],
            characteristics: [
                "Simultaneous degeneration of both upper motor neurons (brain) and lower motor neurons (brainstem/spinal cord) — the defining feature of ALS",
                "TDP-43 protein aggregates found in motor neurons of ~97% of ALS patients — a key pathological hallmark",
                "Disease spreads contiguously through the motor neuron network, region by region",
                "Eye movement neurons (oculomotor nuclei) and sacral autonomic neurons are remarkably spared until very late",
                "Corticospinal tract degeneration visible on MRI as signal changes along the motor pathway"
            ]
        ),
        treatment: TreatmentContent(
            intro: "While there is no cure for ALS, recent therapeutic advances have expanded treatment options. A multidisciplinary approach to care significantly improves quality of life and may extend survival.",
            biomarkers: [
                BiomarkerInfo(
                    name: "Neurofilament Light Chain (NfL)",
                    whatItIs: "A structural protein released from damaged neurons into cerebrospinal fluid and blood. Easily measured via blood test.",
                    whyItMatters: "Elevated in ALS and correlates with disease progression rate. Being used as an outcome measure in clinical trials. Helps differentiate ALS from ALS-mimicking conditions. May aid earlier diagnosis.",
                    prevalence: "Elevated in virtually all ALS patients"
                ),
                BiomarkerInfo(
                    name: "SOD1 & C9orf72 Genetic Testing",
                    whatItIs: "Genetic tests for the two most common ALS-causing genes. SOD1 mutations cause ~20% of familial ALS. C9orf72 repeat expansions cause ~40% of familial ALS and ~5-10% of sporadic ALS.",
                    whyItMatters: "SOD1 mutations now have a targeted therapy (tofersen). C9orf72 carriers may develop ALS, frontotemporal dementia, or both. Genetic testing guides treatment selection and clinical trial eligibility.",
                    prevalence: "SOD1: ~2% of all ALS; C9orf72: ~5-10% of all ALS"
                ),
                BiomarkerInfo(
                    name: "Electromyography (EMG)",
                    whatItIs: "An electrodiagnostic test that measures electrical activity in muscles and nerve conduction. Detects denervation, fasciculations, and reinnervation patterns characteristic of motor neuron loss.",
                    whyItMatters: "Essential for ALS diagnosis — demonstrates widespread lower motor neuron involvement across multiple body regions. Helps rule out other conditions (neuropathies, myopathies). Revised El Escorial criteria require EMG findings.",
                    prevalence: "Abnormal in all clinically definite ALS patients"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Diagnosis & Disease-Modifying Medications",
                    timeline: "At diagnosis",
                    whatHappens: [
                        "Comprehensive neurological evaluation, EMG, MRI to confirm diagnosis",
                        "Riluzole (Rilutek) — first FDA-approved ALS drug, modest survival benefit (~2-3 months)",
                        "Edaravone (Radicava) — antioxidant, may slow functional decline in selected patients",
                        "Genetic testing to identify SOD1, C9orf72, or other targetable mutations"
                    ],
                    whatToExpect: [
                        "Diagnosis often takes 9-12 months due to need to exclude other conditions",
                        "Riluzole is taken daily as a pill; side effects include nausea and liver enzyme monitoring",
                        "Edaravone given as IV infusion or oral suspension in cycles",
                        "Referral to a multidisciplinary ALS clinic is strongly recommended"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Targeted & Emerging Therapies",
                    timeline: "Based on genetic profile",
                    whatHappens: [
                        "Tofersen (Qalsody) — antisense oligonucleotide for SOD1 ALS (FDA approved 2023)",
                        "Clinical trials for C9orf72-targeted therapies (gene silencing approaches)",
                        "AMX0035 (Relyvrio) — investigated for mitochondrial and ER stress protection",
                        "Active research in gene therapy, stem cells, and other novel approaches"
                    ],
                    whatToExpect: [
                        "Tofersen given as intrathecal injection (spinal tap) every 4 weeks — slows progression in SOD1 ALS",
                        "Tofersen reduces neurofilament light chain levels, confirming biological effect",
                        "Clinical trials actively recruiting — genetic testing helps determine eligibility",
                        "Combination therapy approaches are an active area of investigation"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Symptom Management & Supportive Care",
                    timeline: "Throughout disease course",
                    whatHappens: [
                        "Non-invasive ventilation (BiPAP) for respiratory support — extends survival and improves quality of life",
                        "Feeding tube (PEG) placement when swallowing becomes unsafe — maintains nutrition and hydration",
                        "Medications for spasticity (baclofen), cramps, sialorrhea, pseudobulbar affect (dextromethorphan/quinidine)",
                        "Assistive communication devices as speech declines (eye-tracking technology, speech-generating devices)"
                    ],
                    whatToExpect: [
                        "BiPAP is typically started when respiratory function drops below threshold (FVC <50%)",
                        "PEG tube placement ideally done before significant respiratory decline",
                        "Assistive technology allows continued communication even in advanced disease",
                        "Proactive symptom management significantly improves daily quality of life"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Multidisciplinary & End-of-Life Care",
                    timeline: "Ongoing and advanced stages",
                    whatHappens: [
                        "Multidisciplinary ALS clinic team (neurology, pulmonology, nutrition, PT, OT, speech, social work, psychology)",
                        "Advanced care planning — discussions about ventilator support, tracheostomy, and goals of care",
                        "Palliative care integration for comfort and quality of life",
                        "Caregiver support, respite care, and bereavement services"
                    ],
                    whatToExpect: [
                        "Multidisciplinary ALS clinic care is proven to extend survival by 7-10 months compared to general neurology care",
                        "Decision about long-term invasive ventilation (tracheostomy) is deeply personal and should be discussed early",
                        "Hospice care focuses on comfort when life-prolonging treatments are no longer desired",
                        "Ongoing research in gene therapy, stem cells, and biomarkers offers hope for future breakthroughs"
                    ]
                )
            ]
        )
    )
}
