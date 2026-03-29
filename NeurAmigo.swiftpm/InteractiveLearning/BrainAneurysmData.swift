// BrainAneurysmData.swift
// Static learning content for the brain aneurysm disease module.

import Foundation

extension DiseaseContent {
    static let brainAneurysm = DiseaseContent(
        id: "brain_aneurysm",
        overview: OverviewContent(
            whatIsIt: [
                "A brain aneurysm (also called a cerebral or intracranial aneurysm) is a weak, bulging spot on the wall of a brain artery, somewhat like a thin balloon or a weak spot on an inner tube. As blood flows through the artery, the pressure causes the weakened area to balloon outward. If this bulge ruptures, it causes bleeding into the space surrounding the brain — a life-threatening emergency called a subarachnoid hemorrhage (SAH).",
                "The good news is that most brain aneurysms never rupture. An estimated 3-5% of the general population harbors an unruptured aneurysm, and the vast majority of these remain small and asymptomatic throughout a person's lifetime. However, when rupture does occur, the consequences are severe: approximately 25-50% of ruptured aneurysms are fatal, and many survivors face lasting neurological deficits."
            ],
            keyStatistics: [
                "~3-5% of the general population has an unruptured brain aneurysm",
                "~30,000 aneurysm ruptures occur per year in the US",
                "25-50% mortality rate for ruptured aneurysms",
                "~50% of survivors experience permanent neurological deficits",
                "Peak incidence of rupture: ages 40-60",
                "Most unruptured aneurysms are discovered incidentally on brain imaging"
            ],
            howItDevelops: "Brain aneurysms are classified by their shape and size:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Saccular (Berry) Aneurysm",
                    percentage: "~90% of cases",
                    description: "The most common type. Forms a round, berry-like pouch on the artery wall, typically at a branch point. These arise where the arterial wall is naturally thinner and subject to hemodynamic stress."
                ),
                DiseaseTypeInfo(
                    name: "Fusiform Aneurysm",
                    percentage: "~5-7% of cases",
                    description: "A spindle-shaped widening involving the entire circumference of the artery over a short segment. More commonly associated with atherosclerosis and less likely to rupture than saccular aneurysms, but harder to treat surgically."
                ),
                DiseaseTypeInfo(
                    name: "Mycotic (Infectious) Aneurysm",
                    percentage: "~2-3% of cases",
                    description: "Caused by infection in the arterial wall, often from bacterial endocarditis spreading infected emboli to brain arteries. Tends to occur in more distal branches. Requires antibiotic treatment alongside surgical consideration."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets Brain Aneurysms?",
            ageDistribution: [
                AgeGroupInfo(range: "Under 30", percentage: 5),
                AgeGroupInfo(range: "30-39", percentage: 12),
                AgeGroupInfo(range: "40-49", percentage: 25),
                AgeGroupInfo(range: "50-59", percentage: 30),
                AgeGroupInfo(range: "60-69", percentage: 18),
                AgeGroupInfo(range: "70+", percentage: 10)
            ],
            peakAge: "40-60 years at rupture",
            genderMale: 40,
            genderFemale: 60,
            genderExplanation: "Women are approximately 1.5 times more likely to develop brain aneurysms, with the risk increasing significantly after menopause. Declining estrogen levels may weaken arterial walls, and hormonal changes during menopause are thought to contribute to this disparity.",
            geographicHigher: [
                RegionInfo(region: "Finland", rate: "~16 per 100,000 — among the highest globally"),
                RegionInfo(region: "Japan", rate: "~12-15 per 100,000 — elevated rates, especially SAH")
            ],
            geographicLower: [
                RegionInfo(region: "South America", rate: "~4-5 per 100,000"),
                RegionInfo(region: "Middle East & Africa", rate: "~3-4 per 100,000 (likely underreported)")
            ],
            geographicNote: "Finland and Japan consistently show the highest rates of subarachnoid hemorrhage worldwide. Reasons are not fully understood but may involve genetic predisposition, dietary factors (high salt intake), and prevalence of smoking and hypertension.",
            confirmedRisks: [
                "Hypertension (single strongest modifiable risk factor for rupture)",
                "Cigarette smoking (increases risk 3-5x, and promotes growth of existing aneurysms)",
                "Family history of brain aneurysms (first-degree relative increases risk 3-7x)",
                "Excessive alcohol consumption",
                "Connective tissue disorders (Ehlers-Danlos type IV, Marfan syndrome)",
                "Autosomal dominant polycystic kidney disease (ADPKD) — 8-10% have aneurysms",
                "Coarctation of the aorta and other congenital cardiovascular anomalies",
                "History of prior aneurysm (recurrence or new formation risk)"
            ],
            unconfirmedFactors: [
                "Sympathomimetic drug use (cocaine, amphetamines) — may trigger rupture",
                "Oral contraceptive use and hormonal factors",
                "Chronic NSAID use and anticoagulant therapy",
                "High caffeine intake as a rupture trigger"
            ],
            importantNote: "Having a risk factor does not mean an aneurysm will form or rupture. Many people with no known risk factors develop aneurysms, while many people with multiple risk factors never do. Screening with MRA (magnetic resonance angiography) is recommended for individuals with two or more first-degree relatives who have had brain aneurysms."
        ),
        symptoms: SymptomsContent(
            disclaimer: "A ruptured brain aneurysm is a medical emergency. If you or someone experiences a sudden, severe headache unlike anything felt before, call 911 immediately. Time to treatment is critical.",
            variabilityNote: "Symptoms differ dramatically between unruptured and ruptured aneurysms. Most unruptured aneurysms produce no symptoms at all:",
            mostFrequent: [
                SymptomInfo(
                    name: "Thunderclap Headache (Ruptured)",
                    details: [
                        "Described as the 'worst headache of my life' — sudden, explosive onset",
                        "Reaches maximum intensity within seconds to one minute",
                        "Distinct from migraine or tension headaches in its abruptness and severity",
                        "The hallmark symptom of subarachnoid hemorrhage (SAH)"
                    ]
                ),
                SymptomInfo(
                    name: "Neurological Collapse (Ruptured)",
                    details: [
                        "Nausea and vomiting (from increased intracranial pressure)",
                        "Stiff neck (meningismus — blood irritates the meninges)",
                        "Loss of consciousness in approximately 50% of cases",
                        "Seizures occur in up to 25% at the time of rupture"
                    ]
                ),
                SymptomInfo(
                    name: "Cranial Nerve Compression (Large Unruptured)",
                    details: [
                        "Dilated pupil and drooping eyelid (third nerve palsy) — classic sign of posterior communicating artery aneurysm",
                        "Double vision from compression of the third or sixth cranial nerve",
                        "Facial pain or numbness from trigeminal nerve involvement",
                        "Visual field deficits if compressing the optic nerve or chiasm"
                    ]
                )
            ],
            common: [
                "Sentinel headache — a warning headache days to weeks before major rupture (occurs in 10-40% of cases)",
                "Photophobia (sensitivity to light) with ruptured aneurysm",
                "Confusion and altered mental status",
                "Focal neurological deficits (weakness, speech difficulty) depending on location",
                "Retinal hemorrhages visible on eye examination",
                "Cardiac arrhythmias and EKG changes (brain-heart interaction during SAH)"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Posterior Communicating Artery", symptoms: "Third cranial nerve palsy — a painful, dilated pupil with drooping eyelid is the classic presentation requiring emergency evaluation"),
                LocationSymptomInfo(location: "Anterior Communicating Artery", symptoms: "Personality changes, memory problems, visual field deficits. When ruptured, can cause frontal lobe dysfunction and abulia (loss of motivation)"),
                LocationSymptomInfo(location: "Middle Cerebral Artery", symptoms: "Contralateral weakness or numbness, speech problems (if dominant hemisphere), seizures. Rupture often causes intracerebral hematoma in addition to SAH"),
                LocationSymptomInfo(location: "Basilar Artery Tip", symptoms: "Brainstem compression signs: cranial nerve palsies, ataxia, bilateral motor deficits. Rupture carries the highest mortality rate")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "Where Brain Aneurysms Form",
            commonLocations: [
                BrainLocationInfo(region: "Anterior Communicating Artery (AComA)", percentage: "~30%", description: "The most common location. This small artery connects the left and right anterior cerebral arteries at the front of the Circle of Willis. The junction point creates turbulent blood flow that stresses the vessel wall."),
                BrainLocationInfo(region: "Posterior Communicating Artery (PComA)", percentage: "~25%", description: "Connects the anterior (carotid) and posterior (vertebrobasilar) circulations. Aneurysms here are notorious for compressing the third cranial nerve, causing a painful dilated pupil — a neurosurgical emergency."),
                BrainLocationInfo(region: "Middle Cerebral Artery (MCA) Bifurcation", percentage: "~20%", description: "Where the MCA splits into its major branches in the Sylvian fissure. These aneurysms are often more accessible for surgical clipping due to their lateral location."),
                BrainLocationInfo(region: "Internal Carotid Artery (ICA)", percentage: "~15%", description: "Including ophthalmic, superior hypophyseal, and cavernous segments. Cavernous segment aneurysms rarely cause SAH because they are located outside the subarachnoid space."),
                BrainLocationInfo(region: "Basilar Artery & Posterior Circulation", percentage: "~10%", description: "Includes basilar tip, PICA, SCA, and vertebral artery. These posterior circulation aneurysms are technically challenging to treat and carry higher rupture mortality.")
            ],
            characteristics: [
                "Over 85% of aneurysms arise on the Circle of Willis — the ring of arteries at the base of the brain connecting the major cerebral blood vessels",
                "Aneurysms preferentially form at arterial bifurcations where hemodynamic stress (blood flow turbulence) is greatest",
                "The arterial wall at an aneurysm site lacks the normal internal elastic lamina and has a thinned media (muscle layer), making it structurally weak",
                "Size matters: aneurysms <7mm have a low annual rupture risk (~0.2-0.5%), while those >25mm (giant) have a significantly higher risk (~6% per year)",
                "Irregular shape (daughter sac or lobulation) increases rupture risk regardless of size",
                "Multiple aneurysms are found in 15-30% of patients — all must be evaluated if one is discovered"
            ]
        ),
        treatment: TreatmentContent(
            intro: "Treatment of brain aneurysms depends on whether the aneurysm has ruptured, its size, location, shape, and the patient's overall health. Many small unruptured aneurysms can be safely observed with periodic imaging, while ruptured aneurysms require emergency intervention.",
            biomarkers: [
                BiomarkerInfo(
                    name: "CT Angiography (CTA)",
                    whatItIs: "A rapid, non-invasive imaging study using contrast dye and CT scanning to create detailed 3D images of brain blood vessels. Often the first test obtained when aneurysm is suspected.",
                    whyItMatters: "Sensitivity exceeds 95% for aneurysms >3mm. Fast and widely available, making it ideal for emergency screening after sudden severe headache. Helps determine aneurysm size, shape, and relationship to surrounding vessels.",
                    prevalence: "Used as the primary screening and diagnostic tool in most centers"
                ),
                BiomarkerInfo(
                    name: "Cerebral Angiography (DSA)",
                    whatItIs: "A catheter-based procedure where contrast is injected directly into brain arteries, producing the highest resolution images of cerebral vasculature. Considered the gold standard for aneurysm evaluation.",
                    whyItMatters: "Provides the most detailed view of aneurysm anatomy including neck width, dome-to-neck ratio, and relationship to branch vessels. Essential for treatment planning. Also allows simultaneous endovascular treatment if appropriate.",
                    prevalence: "Performed in virtually all cases before definitive treatment"
                ),
                BiomarkerInfo(
                    name: "Lumbar Puncture (CSF Analysis)",
                    whatItIs: "A procedure to collect cerebrospinal fluid from the lower back, analyzed for the presence of blood breakdown products (xanthochromia) indicating recent bleeding.",
                    whyItMatters: "Critical when CT scan is negative but clinical suspicion for SAH is high. Xanthochromia (yellow discoloration from bilirubin) can detect SAH even when CT misses it, especially when imaging is delayed beyond 12 hours.",
                    prevalence: "Performed when CT-negative SAH is suspected — approximately 5% of SAH cases have initially negative CT"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Observation — Watchful Waiting",
                    timeline: "For small (<7mm) unruptured aneurysms",
                    whatHappens: [
                        "Periodic imaging surveillance with MRA or CTA every 6-12 months initially, then annually",
                        "Aggressive blood pressure control (target <130/80 mmHg)",
                        "Smoking cessation — the single most important modifiable behavior",
                        "Avoidance of excessive alcohol, sympathomimetic drugs, and extreme physical straining"
                    ],
                    whatToExpect: [
                        "Most small aneurysms remain stable and never require intervention",
                        "Annual rupture risk for aneurysms <7mm in the anterior circulation is approximately 0.2-0.5%",
                        "Growth on serial imaging or development of symptoms may prompt treatment",
                        "Regular follow-up imaging provides reassurance and catches changes early"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Surgical Clipping",
                    timeline: "Planned or emergency (after rupture)",
                    whatHappens: [
                        "Open craniotomy under general anesthesia to expose the aneurysm",
                        "A small titanium clip is placed across the neck of the aneurysm, sealing it off from blood flow",
                        "The aneurysm is excluded from circulation while preserving normal artery flow",
                        "Intraoperative angiography or ICG fluorescence confirms complete clipping"
                    ],
                    whatToExpect: [
                        "Hospital stay of 4-7 days for unruptured cases, longer for ruptured",
                        "Clipping is very durable — most clipped aneurysms do not recur",
                        "Best suited for MCA aneurysms and those with wide necks not amenable to coiling",
                        "Recovery from craniotomy takes several weeks; most patients return to normal activities in 4-6 weeks"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Endovascular Coiling & Flow Diversion",
                    timeline: "Planned or emergency (after rupture)",
                    whatHappens: [
                        "A microcatheter is navigated through the femoral artery to the brain under X-ray guidance",
                        "Platinum coils are packed into the aneurysm sac, promoting blood clotting and sealing the aneurysm",
                        "Flow diverter stents (Pipeline, FRED) redirect blood flow away from the aneurysm for complex cases",
                        "Stent-assisted coiling or balloon-assisted coiling used for wide-neck aneurysms"
                    ],
                    whatToExpect: [
                        "Less invasive than clipping — no craniotomy required, shorter recovery (1-3 days hospital stay)",
                        "Currently the preferred approach for most posterior circulation and many anterior aneurysms",
                        "Flow diverters require dual antiplatelet therapy (aspirin + clopidogrel) for several months",
                        "Follow-up angiography at 6 months and beyond needed to check for aneurysm recurrence or coil compaction"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Post-Rupture Critical Care (SAH Management)",
                    timeline: "Days 1-21 after rupture",
                    whatHappens: [
                        "ICU monitoring with close neurological checks, often including an external ventricular drain (EVD)",
                        "Nimodipine (calcium channel blocker) given for 21 days to reduce vasospasm risk",
                        "Monitoring for delayed cerebral ischemia (DCI) — the leading cause of death and disability after initial hemorrhage survival",
                        "Management of hydrocephalus, seizures, cardiac complications, and electrolyte disturbances"
                    ],
                    whatToExpect: [
                        "Vasospasm risk peaks at days 4-14 after rupture — close monitoring is critical during this window",
                        "Approximately 30% of SAH patients develop vasospasm requiring aggressive treatment",
                        "Up to 20% of patients need a permanent shunt for chronic hydrocephalus",
                        "Recovery timeline varies from weeks to months; rehabilitation is often needed for cognitive, physical, and emotional recovery"
                    ]
                )
            ]
        )
    )
}
