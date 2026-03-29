// TraumaticBrainInjuryData.swift
// Static learning content for the traumatic brain injury (TBI) disease module.

import Foundation

extension DiseaseContent {
    static let traumaticBrainInjury = DiseaseContent(
        id: "traumatic_brain_injury",
        overview: OverviewContent(
            whatIsIt: [
                "Traumatic Brain Injury (TBI) is physical damage to brain tissue caused by an external mechanical force such as a blow, bump, jolt to the head, or a penetrating injury. Unlike neurodegenerative diseases that develop gradually, TBI occurs suddenly and can range from a brief change in mental status (concussion) to an extended period of unconsciousness or amnesia.",
                "TBI is a leading cause of disability and death worldwide. The injury itself unfolds in two phases: the primary injury (immediate physical damage at the moment of impact) and the secondary injury (a cascade of biochemical changes including swelling, inflammation, and cell death that develops over hours to days and can cause further damage beyond the initial impact zone)."
            ],
            keyStatistics: [
                "~2.8 million US emergency department visits per year for TBI",
                "~69 million individuals worldwide sustain a TBI each year",
                "Leading cause of death and disability in people ages 1-44",
                "~57,000 TBI-related deaths annually in the US"
            ],
            howItDevelops: "TBI is classified by severity using the Glasgow Coma Scale (GCS):",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Mild TBI (Concussion)",
                    percentage: "75-90% of all TBIs",
                    description: "GCS score 13-15. Brief or no loss of consciousness (under 30 minutes). May involve confusion, disorientation, or short-term memory problems. Most patients recover fully within days to weeks, though some develop persistent post-concussion symptoms."
                ),
                DiseaseTypeInfo(
                    name: "Moderate TBI",
                    percentage: "~10% of all TBIs",
                    description: "GCS score 9-12. Loss of consciousness lasting 30 minutes to 24 hours. Post-traumatic amnesia up to 7 days. Often involves visible brain injury on CT or MRI. Recovery is variable and may require rehabilitation."
                ),
                DiseaseTypeInfo(
                    name: "Severe TBI",
                    percentage: "~5-10% of all TBIs",
                    description: "GCS score 3-8. Loss of consciousness exceeding 24 hours. High risk of permanent disability or death. Frequently requires intensive care, surgery, and extensive long-term rehabilitation."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Experiences Traumatic Brain Injury?",
            ageDistribution: [
                AgeGroupInfo(range: "0-4 years", percentage: 20),
                AgeGroupInfo(range: "5-14 years", percentage: 10),
                AgeGroupInfo(range: "15-24 years", percentage: 25),
                AgeGroupInfo(range: "25-64 years", percentage: 25),
                AgeGroupInfo(range: "65+", percentage: 20)
            ],
            peakAge: "Ages 0-4, 15-24, and 65+ (trimodal distribution)",
            genderMale: 65,
            genderFemale: 35,
            genderExplanation: "Males are approximately twice as likely to sustain a TBI, largely due to higher rates of risk-taking behavior, contact sports participation, military service, and occupational hazards.",
            geographicHigher: [
                RegionInfo(region: "Low- and Middle-Income Countries", rate: "Higher rates due to road traffic injuries and limited safety infrastructure"),
                RegionInfo(region: "United States & Australia", rate: "High rates from motor vehicle accidents and sports-related injuries")
            ],
            geographicLower: [
                RegionInfo(region: "Western Europe", rate: "Lower rates due to stricter traffic safety regulations and helmet laws"),
                RegionInfo(region: "Scandinavian Countries", rate: "Lower overall incidence attributed to comprehensive safety policies")
            ],
            geographicNote: "Road traffic injuries are the leading cause of TBI globally, especially in low- and middle-income countries. In the US, falls have overtaken motor vehicle accidents as the leading cause overall, though MVAs remain the leading cause for ages 15-24.",
            confirmedRisks: [
                "Falls (leading cause overall, especially ages 0-4 and 65+)",
                "Motor vehicle, motorcycle, and bicycle accidents (leading cause for ages 15-24)",
                "Contact sports participation (football, boxing, hockey, soccer, rugby)",
                "Military service and combat exposure (blast injuries)",
                "Prior TBI (each subsequent concussion increases risk and severity)",
                "Alcohol and substance use (involved in ~50% of TBIs)"
            ],
            unconfirmedFactors: [
                "Subconcussive repetitive head impacts in youth sports (long-term effects under study)",
                "Genetic susceptibility factors (APOE4 may worsen outcomes)",
                "Pre-existing mental health conditions and recovery outcomes",
                "Screen time and cognitive reserve as factors in recovery"
            ],
            importantNote: "Prevention is the most effective strategy against TBI. Seatbelts reduce fatal crash injuries by 45%, motorcycle helmets by 37%, and bicycle helmets by 70%. Fall-proofing homes for elderly individuals and enforcing rules in contact sports are also proven prevention measures."
        ),
        symptoms: SymptomsContent(
            disclaimer: "TBI symptoms can vary widely depending on severity and location of injury. Any head injury followed by confusion, loss of consciousness, or behavioral changes should be evaluated immediately by a medical professional.",
            variabilityNote: "TBI symptoms depend heavily on injury severity. Mild TBI symptoms may be subtle, while moderate-to-severe TBI symptoms are typically more obvious and debilitating:",
            mostFrequent: [
                SymptomInfo(
                    name: "Mild TBI (Concussion) Symptoms",
                    details: [
                        "Headache (most common symptom, reported in >90% of concussions)",
                        "Dizziness, lightheadedness, and balance problems",
                        "Confusion, feeling 'foggy,' or difficulty concentrating",
                        "Brief or no loss of consciousness (seconds to minutes)"
                    ]
                ),
                SymptomInfo(
                    name: "Moderate-to-Severe TBI Symptoms",
                    details: [
                        "Prolonged loss of consciousness (minutes to hours or longer)",
                        "Post-traumatic amnesia (inability to form new memories after injury)",
                        "Persistent and worsening headache, repeated vomiting",
                        "Seizures, pupil dilation, clear fluid from nose or ears (CSF leak)"
                    ]
                ),
                SymptomInfo(
                    name: "Cognitive & Behavioral Changes",
                    details: [
                        "Memory problems, especially forming new memories",
                        "Slowed thinking and difficulty with attention and concentration",
                        "Personality changes: irritability, impulsivity, emotional lability",
                        "Depression, anxiety, and sleep disturbances (can persist for months to years)"
                    ]
                )
            ],
            common: [
                "Sensitivity to light and noise (photophobia and phonophobia)",
                "Nausea and vomiting (especially in acute phase)",
                "Fatigue and excessive sleepiness or difficulty sleeping",
                "Blurred or double vision",
                "Tinnitus (ringing in the ears)",
                "Mood changes, emotional outbursts, or apathy"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Frontal Lobe (most vulnerable)", symptoms: "Personality changes, impulsivity, poor judgment, difficulty planning and organizing, emotional dysregulation, motor deficits"),
                LocationSymptomInfo(location: "Temporal Lobe (most vulnerable)", symptoms: "Memory impairment, language difficulties (if left side), emotional instability, auditory processing problems"),
                LocationSymptomInfo(location: "Brainstem", symptoms: "Disrupted consciousness, breathing and heart rate abnormalities, sleep-wake cycle disturbance, cranial nerve deficits"),
                LocationSymptomInfo(location: "White Matter Tracts (diffuse)", symptoms: "Slowed processing speed, cognitive fatigue, difficulty multitasking — caused by diffuse axonal injury from rotational forces")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "How TBI Affects the Brain",
            commonLocations: [
                BrainLocationInfo(region: "Frontal Lobes", percentage: "Most commonly injured", description: "Vulnerable due to proximity to rough bony ridges inside the skull. Damage causes executive dysfunction, personality changes, and motor deficits."),
                BrainLocationInfo(region: "Temporal Lobes", percentage: "Frequently injured", description: "Also adjacent to bony prominences. Injury affects memory, language, and emotional regulation. Hippocampal damage impairs new memory formation."),
                BrainLocationInfo(region: "Coup-Contrecoup Sites", percentage: "Dual-site injury", description: "Brain impacts the skull at the point of impact (coup) and the opposite side (contrecoup) as it rebounds, causing damage at two locations simultaneously."),
                BrainLocationInfo(region: "White Matter Tracts", percentage: "Widespread in moderate-severe", description: "Rotational and shearing forces tear axons throughout the brain (diffuse axonal injury or DAI), disrupting neural connections across large networks."),
                BrainLocationInfo(region: "Brainstem & Deep Structures", percentage: "Severe TBI", description: "Injury here affects consciousness, autonomic functions, and arousal. Brainstem herniation from increased intracranial pressure is life-threatening.")
            ],
            characteristics: [
                "Primary injury occurs at impact: contusions (bruising), lacerations, skull fractures, and vascular tears",
                "Secondary injury develops over hours to days: brain swelling (edema), elevated intracranial pressure, ischemia, excitotoxicity, and neuroinflammation",
                "Coup-contrecoup mechanism means the brain can be damaged both at and opposite to the impact site",
                "Diffuse axonal injury (DAI) from rotational forces shears nerve fibers throughout white matter, often invisible on CT scans but detectable on MRI",
                "Chronic traumatic encephalopathy (CTE) may develop from repetitive head impacts over years, characterized by tau protein deposits",
                "Blood-brain barrier disruption allows inflammatory cells and proteins into brain tissue, worsening secondary damage"
            ]
        ),
        treatment: TreatmentContent(
            intro: "TBI treatment depends on severity. Mild TBI usually resolves with rest and monitoring, while moderate-to-severe TBI requires emergency medical care, possible surgery, and often months to years of rehabilitation.",
            biomarkers: [
                BiomarkerInfo(
                    name: "CT Scan (Computed Tomography)",
                    whatItIs: "The primary initial imaging tool for TBI evaluation. Rapidly detects skull fractures, intracranial bleeding (epidural, subdural, subarachnoid hemorrhages), brain contusions, and midline shift.",
                    whyItMatters: "Fast, widely available, and critical for identifying surgical emergencies such as expanding hematomas. A normal CT does not rule out brain injury — many mild TBIs and diffuse axonal injuries are CT-negative.",
                    prevalence: "Performed on virtually all moderate-to-severe TBI patients in the ED"
                ),
                BiomarkerInfo(
                    name: "MRI (Magnetic Resonance Imaging)",
                    whatItIs: "More sensitive than CT for detecting diffuse axonal injury, small contusions, and subtle brain changes. Advanced sequences (DTI, SWI) can reveal white matter tract damage and microbleeds.",
                    whyItMatters: "Essential for understanding the full extent of brain injury, especially when CT is normal but symptoms persist. Diffusion tensor imaging (DTI) can show axonal damage not visible on standard imaging.",
                    prevalence: "Used selectively, especially when CT-negative but symptoms persist or worsen"
                ),
                BiomarkerInfo(
                    name: "Blood Biomarkers (GFAP & UCH-L1)",
                    whatItIs: "FDA-cleared blood test measuring glial fibrillary acidic protein (GFAP) and ubiquitin C-terminal hydrolase L1 (UCH-L1), proteins released when brain cells are damaged.",
                    whyItMatters: "Can help determine which mild TBI patients need a CT scan, reducing unnecessary radiation exposure. Elevated levels within 12 hours of injury indicate intracranial damage.",
                    prevalence: "Increasingly used in emergency departments for mild TBI triage"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Acute Emergency Management",
                    timeline: "Minutes to hours after injury",
                    whatHappens: [
                        "ABCs (airway, breathing, circulation) stabilization and Glasgow Coma Scale assessment",
                        "CT scan to identify bleeding, fractures, and brain swelling",
                        "Intracranial pressure (ICP) monitoring for moderate-to-severe TBI",
                        "Emergency surgery if needed: craniotomy for hematoma evacuation, decompressive craniectomy for refractory swelling"
                    ],
                    whatToExpect: [
                        "Mild TBI: typically discharged with monitoring instructions and return precautions",
                        "Moderate-severe TBI: ICU admission, often with mechanical ventilation and sedation",
                        "ICP management is critical — elevated pressure above 20-25 mmHg requires intervention",
                        "Family should prepare for uncertainty — prognosis in first 72 hours can be difficult to determine"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Intensive Care & Medical Stabilization",
                    timeline: "Days to weeks after severe TBI",
                    whatHappens: [
                        "Continuous ICP and cerebral perfusion pressure monitoring",
                        "Osmotic therapy (mannitol or hypertonic saline) to reduce brain swelling",
                        "Seizure prevention with anti-epileptic medications (7-day prophylaxis for severe TBI)",
                        "Management of secondary complications: fever, infections, blood clots, nutrition"
                    ],
                    whatToExpect: [
                        "Patients may be in a coma or minimally conscious state for days to weeks",
                        "Tracheostomy and feeding tube placement may be needed for prolonged unconsciousness",
                        "Emergence from coma is gradual — patients often pass through stages of confusion (post-traumatic amnesia)",
                        "Length of post-traumatic amnesia is one of the best predictors of long-term outcome"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Rehabilitation",
                    timeline: "Weeks to months (can continue for years)",
                    whatHappens: [
                        "Inpatient rehabilitation with physical therapy (PT), occupational therapy (OT), and speech-language pathology",
                        "Neuropsychological evaluation and cognitive rehabilitation therapy",
                        "Management of behavioral changes: agitation, impulsivity, emotional dysregulation",
                        "Gradual return-to-activity protocols (for concussion: stepwise return to sport and school)"
                    ],
                    whatToExpect: [
                        "Most rapid recovery occurs in the first 6 months, but improvement can continue for 2+ years",
                        "Cognitive deficits (attention, memory, processing speed) often persist longer than physical deficits",
                        "Fatigue is one of the most common and persistent complaints across all severities",
                        "Concussion recovery: most adults recover in 2-4 weeks; children and adolescents may take longer"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Long-Term Management & Community Reintegration",
                    timeline: "Months to lifelong",
                    whatHappens: [
                        "Ongoing outpatient therapies targeting specific deficits (cognitive, vocational, social)",
                        "Management of post-concussion syndrome if symptoms persist beyond 3 months",
                        "Treatment of psychiatric comorbidities: depression (up to 50% of TBI survivors), anxiety, PTSD",
                        "Monitoring for late complications: post-traumatic epilepsy (risk up to 5 years), neurodegenerative risk"
                    ],
                    whatToExpect: [
                        "Many mild TBI patients recover fully, but 10-30% experience persistent post-concussion symptoms",
                        "Moderate-to-severe TBI survivors often face lifelong challenges with cognition, behavior, and independence",
                        "Social relationships and return to work/school are often the most difficult long-term challenges",
                        "Emerging research links repeated TBI to increased risk of neurodegenerative diseases (Alzheimer's, CTE, Parkinson's)"
                    ]
                )
            ]
        )
    )
}
