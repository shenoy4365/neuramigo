// IschemicStrokeData.swift
// Static learning content for the ischemic stroke disease module.

import Foundation

extension DiseaseContent {
    static let ischemicStroke = DiseaseContent(
        id: "ischemic_stroke",
        overview: OverviewContent(
            whatIsIt: [
                "An ischemic stroke occurs when a blood clot blocks or narrows an artery supplying blood to the brain, cutting off oxygen and nutrients to brain tissue. Within minutes, brain cells in the affected area begin to die. Ischemic stroke accounts for approximately 87% of all strokes, making it by far the most common type.",
                "Stroke is a medical emergency where every minute counts. The phrase 'time is brain' reflects the reality that roughly 1.9 million neurons are lost per minute during an untreated stroke. Rapid recognition and treatment can dramatically reduce brain damage, disability, and death. Advances in acute treatment, particularly clot-dissolving medication and mechanical clot retrieval, have transformed stroke outcomes over the past two decades."
            ],
            keyStatistics: [
                "~795,000 strokes occur each year in the US (~610,000 first attacks)",
                "87% of all strokes are ischemic (caused by blood clots)",
                "Stroke is the 5th leading cause of death in the US",
                "Leading cause of serious long-term disability in adults",
                "Someone in the US has a stroke every 40 seconds"
            ],
            howItDevelops: "Ischemic strokes are classified by their underlying cause:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Large Artery Atherosclerosis",
                    percentage: "~25-30% of ischemic strokes",
                    description: "Caused by atherosclerotic plaque buildup in major arteries (carotid, vertebral, or large intracranial arteries). Plaque rupture triggers clot formation that blocks blood flow. Risk strongly linked to high cholesterol, smoking, and hypertension."
                ),
                DiseaseTypeInfo(
                    name: "Cardioembolic Stroke",
                    percentage: "~20-25% of ischemic strokes",
                    description: "A blood clot forms in the heart — most commonly due to atrial fibrillation — and travels to the brain. These strokes tend to be larger and more severe. Atrial fibrillation increases stroke risk 5-fold."
                ),
                DiseaseTypeInfo(
                    name: "Small Vessel Disease (Lacunar Stroke)",
                    percentage: "~20-25% of ischemic strokes",
                    description: "Caused by blockage of small, deep penetrating arteries in the brain. Produces small infarcts (lacunes) typically less than 1.5 cm. Strongly associated with chronic hypertension and diabetes."
                ),
                DiseaseTypeInfo(
                    name: "Other / Cryptogenic",
                    percentage: "~25-30% of ischemic strokes",
                    description: "Includes strokes from arterial dissection, clotting disorders, or no identified cause (cryptogenic). Cryptogenic strokes are an active area of research — many may be due to undetected atrial fibrillation or aortic arch atheroma."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Is at Risk for Ischemic Stroke?",
            ageDistribution: [
                AgeGroupInfo(range: "Under 45", percentage: 10),
                AgeGroupInfo(range: "45-64", percentage: 30),
                AgeGroupInfo(range: "65-79", percentage: 35),
                AgeGroupInfo(range: "80+", percentage: 25)
            ],
            peakAge: "Risk doubles every decade after age 55",
            genderMale: 55,
            genderFemale: 45,
            genderExplanation: "Men have a higher age-adjusted stroke incidence, but women account for more total strokes and stroke deaths due to their longer life expectancy. Women face unique risks including pregnancy, preeclampsia, oral contraceptive use, and hormone replacement therapy.",
            geographicHigher: [
                RegionInfo(region: "US Stroke Belt (Southeast US)", rate: "20-40% higher stroke mortality"),
                RegionInfo(region: "Eastern Europe & Central Asia", rate: "Among highest global stroke burden"),
                RegionInfo(region: "Sub-Saharan Africa", rate: "Rising incidence with increasing hypertension prevalence")
            ],
            geographicLower: [
                RegionInfo(region: "Western Europe & Australia", rate: "Lower incidence with better risk factor control"),
                RegionInfo(region: "Japan", rate: "Declining rates due to aggressive hypertension treatment")
            ],
            geographicNote: "The 'Stroke Belt' in the southeastern United States (an 8-state region) has stroke mortality rates 20-40% higher than the national average. This is attributed to higher rates of hypertension, diabetes, obesity, and smoking, as well as socioeconomic disparities and limited healthcare access.",
            confirmedRisks: [
                "Hypertension — the single most important modifiable risk factor (accounts for ~50% of stroke risk)",
                "Atrial fibrillation — increases stroke risk 5-fold; responsible for ~15-20% of all ischemic strokes",
                "Diabetes mellitus — increases risk 2-4 fold; accelerates atherosclerosis",
                "Smoking — doubles stroke risk; promotes clotting and arterial damage",
                "High LDL cholesterol — contributes to atherosclerotic plaque formation",
                "Physical inactivity and obesity — contribute to multiple other risk factors",
                "Prior stroke or TIA (transient ischemic attack) — highest-risk group for recurrent stroke",
                "Carotid artery stenosis — narrowing greater than 50% significantly increases risk"
            ],
            unconfirmedFactors: [
                "Sleep apnea (strongly suspected; intermittent hypoxia and blood pressure surges)",
                "Chronic inflammatory conditions (rheumatoid arthritis, lupus)",
                "Heavy alcohol consumption beyond moderate intake",
                "Air pollution exposure (particulate matter linked to vascular inflammation)",
                "COVID-19 and post-COVID inflammatory states"
            ],
            importantNote: "Up to 80% of ischemic strokes are preventable through management of modifiable risk factors. The most impactful intervention is blood pressure control: treating hypertension reduces stroke risk by 35-40%. Even modest reductions in systolic blood pressure (10 mmHg) significantly lower stroke risk."
        ),
        symptoms: SymptomsContent(
            disclaimer: "Stroke is a medical emergency. If you or someone nearby shows ANY of these symptoms, call 911 immediately. Do NOT wait to see if symptoms improve. Every minute of delay increases brain damage.",
            variabilityNote: "Stroke symptoms appear SUDDENLY and depend on which brain artery is blocked. The FAST acronym helps recognize the most common signs:",
            mostFrequent: [
                SymptomInfo(
                    name: "FAST Warning Signs",
                    details: [
                        "F — Face drooping: one side of the face droops or is numb; ask the person to smile (uneven smile)",
                        "A — Arm weakness: one arm is weak or numb; ask the person to raise both arms (one arm drifts downward)",
                        "S — Speech difficulty: speech is slurred, garbled, or the person cannot speak or is hard to understand",
                        "T — Time to call 911: if ANY of these signs are present, call emergency services immediately"
                    ]
                ),
                SymptomInfo(
                    name: "Other Sudden-Onset Symptoms",
                    details: [
                        "Sudden severe headache with no known cause",
                        "Sudden numbness or weakness of face, arm, or leg, especially on one side",
                        "Sudden confusion or trouble understanding speech",
                        "Sudden vision problems in one or both eyes",
                        "Sudden difficulty walking, dizziness, or loss of balance and coordination"
                    ]
                ),
                SymptomInfo(
                    name: "Key Characteristics of Stroke Symptoms",
                    details: [
                        "Onset is sudden — symptoms develop within seconds to minutes, not gradually over hours",
                        "Symptoms are typically one-sided (lateralized) — affecting the opposite side from the brain lesion",
                        "Multiple symptoms often occur together",
                        "Symptoms do NOT come and go with stroke — if they resolve quickly, it may have been a TIA (still an emergency)"
                    ]
                )
            ],
            common: [
                "Hemiparesis or hemiplegia — weakness or paralysis of one side of the body",
                "Aphasia — difficulty producing or understanding language (left hemisphere strokes)",
                "Hemineglect — unawareness of one side of space (right hemisphere strokes)",
                "Visual field loss — loss of vision in half of the visual field (homonymous hemianopia)",
                "Dysphagia — difficulty swallowing (increases aspiration pneumonia risk)",
                "Ataxia and vertigo — with posterior circulation (vertebrobasilar) strokes"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Middle Cerebral Artery (MCA) — most common", symptoms: "Contralateral face and arm weakness (greater than leg), aphasia if dominant hemisphere, neglect if non-dominant, visual field cut"),
                LocationSymptomInfo(location: "Anterior Cerebral Artery (ACA)", symptoms: "Contralateral leg weakness (greater than arm and face), personality changes, urinary incontinence, abulia (lack of will)"),
                LocationSymptomInfo(location: "Posterior Cerebral Artery (PCA)", symptoms: "Visual field loss (homonymous hemianopia), memory impairment, alexia without agraphia if dominant side"),
                LocationSymptomInfo(location: "Basilar Artery / Posterior Circulation", symptoms: "Vertigo, diplopia, dysarthria, dysphagia, ataxia, crossed signs (ipsilateral face + contralateral body). Complete occlusion can cause locked-in syndrome.")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "Understanding Brain Vascular Territories in Ischemic Stroke",
            commonLocations: [
                BrainLocationInfo(region: "Middle Cerebral Artery (MCA) Territory", percentage: "60-70% of ischemic strokes", description: "The MCA supplies the lateral surface of the brain including motor and sensory cortex for the face and arm, Broca's and Wernicke's language areas (dominant hemisphere), and the insular cortex. MCA strokes are the most common and often the most disabling."),
                BrainLocationInfo(region: "Anterior Cerebral Artery (ACA) Territory", percentage: "~5% of ischemic strokes", description: "The ACA supplies the medial surface of the frontal and parietal lobes, including the motor and sensory cortex for the leg. ACA strokes cause leg-predominant weakness and may affect personality and motivation."),
                BrainLocationInfo(region: "Posterior Cerebral Artery (PCA) Territory", percentage: "~10% of ischemic strokes", description: "The PCA supplies the occipital lobe (visual cortex), medial temporal lobe (including hippocampus), and thalamus. PCA strokes cause visual field loss and sometimes memory problems."),
                BrainLocationInfo(region: "Lacunar (Small Deep Vessel) Infarcts", percentage: "~20-25% of ischemic strokes", description: "Small penetrating arteries supply deep brain structures: basal ganglia, thalamus, internal capsule, and pons. Lacunar strokes produce characteristic syndromes such as pure motor hemiparesis or pure sensory stroke."),
                BrainLocationInfo(region: "Watershed (Border Zone) Territories", percentage: "~5% of ischemic strokes", description: "Located at the borders between major arterial territories. Vulnerable during systemic hypotension (such as cardiac arrest or severe dehydration). Cause distinctive patterns of weakness affecting proximal limbs ('man in a barrel' syndrome).")
            ],
            characteristics: [
                "Brain tissue deprived of blood flow develops an ischemic core (irreversible damage) surrounded by a penumbra (at-risk but salvageable tissue)",
                "The penumbra is the target of acute stroke treatment — restoring blood flow can rescue this tissue",
                "Approximately 1.9 million neurons, 14 billion synapses, and 12 km of myelinated fibers are lost per minute of untreated large vessel stroke",
                "Collateral blood flow through the Circle of Willis and leptomeningeal anastomoses varies between individuals and influences stroke severity",
                "The blood-brain barrier breaks down in the ischemic zone, leading to vasogenic edema that peaks at 3-5 days and can cause dangerous brain swelling",
                "Hemorrhagic transformation (bleeding into the infarcted area) can occur spontaneously or after reperfusion therapy, particularly in large infarcts"
            ]
        ),
        treatment: TreatmentContent(
            intro: "Ischemic stroke treatment is a time-critical emergency. The goal is to restore blood flow as quickly as possible to save brain tissue. Modern treatments have dramatically improved outcomes, but their effectiveness depends heavily on how quickly they are administered. After the acute phase, treatment shifts to rehabilitation and secondary prevention.",
            biomarkers: [
                BiomarkerInfo(
                    name: "CT Perfusion & CT Angiography",
                    whatItIs: "Advanced CT imaging performed in the emergency department that maps blood flow to the brain (perfusion) and visualizes blood vessels (angiography). CT perfusion distinguishes the irreversible ischemic core from the salvageable penumbra.",
                    whyItMatters: "Guides acute treatment decisions: identifies the blocked vessel for thrombectomy and quantifies how much brain tissue can still be saved. Extended the thrombectomy treatment window to 24 hours by selecting patients with favorable perfusion profiles.",
                    prevalence: "Standard of care in comprehensive stroke centers"
                ),
                BiomarkerInfo(
                    name: "MRI Diffusion-Weighted Imaging (DWI)",
                    whatItIs: "A specialized MRI sequence that detects acute ischemic brain injury within minutes of onset. DWI shows restricted water diffusion in dying brain cells, appearing as bright white areas.",
                    whyItMatters: "The most sensitive imaging modality for detecting acute stroke — identifies infarcts missed by CT. Helps confirm diagnosis, determine stroke age, and assess the extent of irreversible injury. DWI-FLAIR mismatch can estimate time of stroke onset when unknown.",
                    prevalence: "Near 100% sensitivity for acute ischemic stroke after 1 hour"
                ),
                BiomarkerInfo(
                    name: "Blood Biomarkers (Emerging)",
                    whatItIs: "Investigational blood tests measuring markers of brain injury such as GFAP (glial fibrillary acidic protein), NfL (neurofilament light chain), and NT-proBNP. A rapid blood test could aid prehospital stroke triage.",
                    whyItMatters: "GFAP can help differentiate ischemic from hemorrhagic stroke in the field. NfL levels correlate with infarct volume and predict outcomes. These tests are not yet standard clinical practice but may become prehospital triage tools.",
                    prevalence: "Under investigation — not yet part of routine clinical care"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Hyperacute Treatment — The Golden Hours",
                    timeline: "0-24 hours from symptom onset",
                    whatHappens: [
                        "IV alteplase (tPA) — clot-dissolving medication administered within 4.5 hours of symptom onset",
                        "Mechanical thrombectomy — catheter-based clot retrieval for large vessel occlusions, effective up to 24 hours in selected patients",
                        "Emergency brain imaging (CT/CTA/CT perfusion or MRI) to confirm ischemic stroke and exclude hemorrhage",
                        "Tenecteplase — newer clot-dissolving agent increasingly used as an alternative to alteplase, given as a single bolus"
                    ],
                    whatToExpect: [
                        "tPA improves outcomes for ~1 in 3 treated patients; risk of bleeding is ~6%",
                        "Thrombectomy achieves successful recanalization (blood flow restoration) in ~85-90% of cases",
                        "Treatment benefit is strongly time-dependent: earlier = better outcomes",
                        "Patients are monitored in a stroke unit or ICU for at least 24 hours after treatment"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Acute Stroke Unit Care",
                    timeline: "First 1-7 days",
                    whatHappens: [
                        "Admission to a dedicated stroke unit (proven to reduce death and disability)",
                        "Identification and treatment of stroke cause: cardiac monitoring for atrial fibrillation, carotid imaging, echocardiogram",
                        "Blood pressure management — permissive hypertension initially, then gradual reduction",
                        "Early mobilization and rehabilitation assessment by PT, OT, and speech therapy within 24-48 hours",
                        "Swallowing screening before any oral intake to prevent aspiration pneumonia"
                    ],
                    whatToExpect: [
                        "Neurological status is monitored frequently using the NIH Stroke Scale",
                        "Some patients may worsen in the first few days due to brain swelling (edema)",
                        "Large infarcts may require decompressive surgery (hemicraniectomy) if life-threatening swelling develops",
                        "Stroke cause is identified to guide long-term prevention strategy"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Rehabilitation",
                    timeline: "Weeks to months after stroke",
                    whatHappens: [
                        "Inpatient rehabilitation for moderate-to-severe deficits (3+ hours of therapy daily)",
                        "Physical therapy — walking, balance, strength, and mobility training",
                        "Occupational therapy — relearning daily activities (dressing, eating, bathing)",
                        "Speech-language therapy — language recovery (aphasia), cognitive rehabilitation, and swallowing therapy"
                    ],
                    whatToExpect: [
                        "Most significant recovery occurs in the first 3-6 months (highest neuroplasticity window)",
                        "Improvement can continue for 12-18 months or longer with continued effort",
                        "~40% of stroke survivors have moderate-to-severe impairments requiring ongoing assistance",
                        "Emotional challenges are common: post-stroke depression affects ~1 in 3 survivors"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Secondary Prevention — Preventing Another Stroke",
                    timeline: "Lifelong",
                    whatHappens: [
                        "Antiplatelet therapy (aspirin, clopidogrel) for non-cardioembolic strokes",
                        "Anticoagulation (apixaban, rivaroxaban, warfarin) for atrial fibrillation-related strokes",
                        "Statin therapy for cholesterol management and plaque stabilization",
                        "Aggressive blood pressure control (target typically <130/80 mmHg)",
                        "Carotid endarterectomy or stenting for significant carotid artery narrowing (>70%)"
                    ],
                    whatToExpect: [
                        "Without secondary prevention, risk of recurrent stroke is 5-15% per year",
                        "Optimal medical management reduces recurrence risk by 80%",
                        "Lifestyle modifications are essential: exercise, healthy diet, smoking cessation, moderate alcohol",
                        "Regular follow-up with a neurologist or stroke specialist is recommended"
                    ]
                )
            ]
        )
    )
}
