// PituitaryAdenomaData.swift
// Static learning content for the pituitary adenoma disease module.

import Foundation

extension DiseaseContent {
    static let pituitaryAdenoma = DiseaseContent(
        id: "pituitary_adenoma",
        overview: OverviewContent(
            whatIsIt: [
                "Pituitary adenomas are benign tumors that develop in the pituitary gland — a pea-sized organ at the base of the brain that regulates essential hormones controlling growth, metabolism, reproduction, and stress response. They are among the most common intracranial tumors.",
                "Most pituitary adenomas are non-cancerous and slow-growing. However, they can cause significant problems by either overproducing hormones (functioning adenomas) or compressing surrounding structures like the optic nerves (non-functioning adenomas). Many small ones are found incidentally and never require treatment."
            ],
            keyStatistics: [
                "~10,000 diagnosed per year (US), but up to 17% found incidentally at autopsy",
                "Third most common intracranial tumor",
                "~95% are benign (WHO Grade I)",
                "Excellent prognosis: most are curable with surgery"
            ],
            howItDevelops: "Pituitary adenomas are classified by size and hormone production:",
            diseaseTypes: [
                DiseaseTypeInfo(
                    name: "Microadenoma (<10 mm)",
                    percentage: "~50% of diagnosed cases",
                    description: "Small tumors often discovered incidentally. Functioning microadenomas can cause hormonal symptoms despite their tiny size. Many require only monitoring."
                ),
                DiseaseTypeInfo(
                    name: "Macroadenoma (>10 mm)",
                    percentage: "~40% of diagnosed cases",
                    description: "Larger tumors that can compress the optic chiasm (causing vision loss), invade the cavernous sinus, or cause pituitary hormone deficiency."
                ),
                DiseaseTypeInfo(
                    name: "Functioning vs Non-functioning",
                    percentage: "Key clinical distinction",
                    description: "Functioning adenomas (~60%) overproduce hormones (prolactin, growth hormone, ACTH, etc.). Non-functioning adenomas (~40%) cause symptoms through mass effect alone."
                )
            ]
        ),
        riskFactors: RiskFactorsContent(
            intro: "Who Gets Pituitary Adenomas?",
            ageDistribution: [
                AgeGroupInfo(range: "0-19", percentage: 5),
                AgeGroupInfo(range: "20-44", percentage: 35),
                AgeGroupInfo(range: "45-64", percentage: 40),
                AgeGroupInfo(range: "65+", percentage: 20)
            ],
            peakAge: "30-60 years (varies by subtype)",
            genderMale: 40,
            genderFemale: 60,
            genderExplanation: "Prolactinomas are significantly more common in women; non-functioning adenomas are roughly equal",
            geographicHigher: [
                RegionInfo(region: "No significant geographic variation", rate: "Similar worldwide prevalence")
            ],
            geographicLower: [
                RegionInfo(region: "Underdiagnosed regions", rate: "Lower detection where MRI access is limited")
            ],
            geographicNote: "Pituitary adenomas occur equally across all geographic regions and ethnicities. Differences in reported rates primarily reflect diagnostic access.",
            confirmedRisks: [
                "Multiple Endocrine Neoplasia type 1 (MEN1) — autosomal dominant syndrome",
                "Familial Isolated Pituitary Adenoma (FIPA) — AIP gene mutations",
                "Carney complex — multiple endocrine tumors",
                "McCune-Albright syndrome — activating GNAS mutations"
            ],
            unconfirmedFactors: [
                "Hormonal contraceptive use (no proven causal link)",
                "Head trauma (weak evidence)",
                "Stress and hormonal disruption (anecdotal)",
                "Environmental endocrine disruptors"
            ],
            importantNote: "Pituitary adenomas are extremely common — autopsy studies suggest up to 17% of people have small, undetected pituitary adenomas that never cause problems. Only a fraction ever become clinically significant."
        ),
        symptoms: SymptomsContent(
            disclaimer: "These symptoms can occur with many conditions. Only a doctor can diagnose pituitary tumors. If experiencing concerning symptoms, consult a healthcare provider.",
            variabilityNote: "Symptoms depend on whether the adenoma produces excess hormones and/or compresses nearby structures:",
            mostFrequent: [
                SymptomInfo(
                    name: "Vision Changes",
                    details: [
                        "Bitemporal hemianopia (loss of outer peripheral vision in both eyes)",
                        "Caused by compression of the optic chiasm directly above the pituitary",
                        "Gradual onset — patients may not notice until significant loss",
                        "Usually reversible if treated early"
                    ]
                ),
                SymptomInfo(
                    name: "Hormonal Imbalances",
                    details: [
                        "Prolactinoma: irregular periods, milk production, infertility, low libido",
                        "Growth hormone excess: enlarged hands/feet, facial changes (acromegaly)",
                        "ACTH excess: weight gain, round face, easy bruising (Cushing's disease)",
                        "Hormone deficiency: fatigue, cold intolerance, low blood pressure"
                    ]
                ),
                SymptomInfo(
                    name: "Headaches",
                    details: [
                        "Dull, persistent headaches (tumor stretching the pituitary membrane)",
                        "Can be severe with pituitary apoplexy (sudden hemorrhage into tumor)",
                        "May mimic migraine or tension headaches",
                        "Not always proportional to tumor size"
                    ]
                )
            ],
            common: [
                "Fatigue and decreased energy",
                "Sexual dysfunction and decreased libido",
                "Unexplained weight changes",
                "Mood changes, anxiety, or depression",
                "Menstrual irregularities in women",
                "Galactorrhea (unexpected milk production)"
            ],
            locationSpecific: [
                LocationSymptomInfo(location: "Suprasellar Extension (upward)", symptoms: "Visual field loss, headaches from hydrocephalus, hypothalamic dysfunction"),
                LocationSymptomInfo(location: "Cavernous Sinus Invasion (lateral)", symptoms: "Double vision, facial numbness, eye movement problems (cranial nerves III, IV, V, VI)"),
                LocationSymptomInfo(location: "Sphenoid Sinus (downward)", symptoms: "CSF leak (runny nose), nasal congestion, rare meningitis risk"),
                LocationSymptomInfo(location: "Pituitary Apoplexy (emergency)", symptoms: "Sudden severe headache, acute vision loss, nausea/vomiting, altered consciousness — requires emergency treatment")
            ]
        ),
        anatomy: AnatomyContent(
            intro: "Where Pituitary Adenomas Develop",
            commonLocations: [
                BrainLocationInfo(region: "Sella Turcica", percentage: "100%", description: "All pituitary adenomas originate in the pituitary gland within this bony saddle at the skull base"),
                BrainLocationInfo(region: "Suprasellar Extension", percentage: "30-40%", description: "Growth upward compresses the optic chiasm and may block CSF flow"),
                BrainLocationInfo(region: "Cavernous Sinus", percentage: "10-20%", description: "Lateral invasion into the venous space surrounding cranial nerves and the carotid artery"),
                BrainLocationInfo(region: "Sphenoid Sinus", percentage: "5-10%", description: "Downward erosion through the sellar floor into the air sinus below"),
                BrainLocationInfo(region: "Intrasellar Only", percentage: "40-50%", description: "Tumor confined within the sella — often microadenomas with no mass effect symptoms")
            ],
            characteristics: [
                "Located in the sella turcica — a bony pocket at the base of the skull protecting the pituitary",
                "Separated from the brain by the diaphragma sellae (dural membrane) — not truly 'in' the brain",
                "Optic chiasm sits millimeters above the pituitary, explaining why vision loss is so common",
                "The pituitary has two lobes: anterior (where most adenomas arise) and posterior",
                "Surrounded by the cavernous sinuses containing critical blood vessels and nerves",
                "Accessed surgically through the nose (transsphenoidal approach) — no need to open the skull"
            ]
        ),
        treatment: TreatmentContent(
            intro: "Treatment depends on the adenoma type, size, and hormone production. Prolactinomas are uniquely treated with medication first. Other types typically require surgery.",
            biomarkers: [
                BiomarkerInfo(
                    name: "Prolactin Level",
                    whatItIs: "Blood prolactin level correlates directly with prolactinoma size. Levels >200 ng/mL are virtually diagnostic of prolactinoma.",
                    whyItMatters: "Prolactinomas respond to dopamine agonist medications (cabergoline, bromocriptine) and often shrink dramatically without surgery.",
                    prevalence: "~40% of functioning adenomas are prolactinomas"
                ),
                BiomarkerInfo(
                    name: "IGF-1 / Growth Hormone",
                    whatItIs: "Elevated IGF-1 and growth hormone levels indicate a GH-secreting adenoma causing acromegaly.",
                    whyItMatters: "Untreated acromegaly increases cardiovascular risk. Post-surgical GH normalization predicts cure. Somatostatin analogs used if surgery is incomplete.",
                    prevalence: "~15-20% of functioning adenomas"
                ),
                BiomarkerInfo(
                    name: "24-Hour Urinary Cortisol / ACTH",
                    whatItIs: "Elevated cortisol and ACTH levels confirm Cushing's disease from an ACTH-secreting pituitary adenoma.",
                    whyItMatters: "Cushing's disease causes serious systemic effects (diabetes, hypertension, osteoporosis). Cure requires complete tumor removal. Inferior petrosal sinus sampling may be needed to confirm pituitary source.",
                    prevalence: "~10-15% of functioning adenomas"
                )
            ],
            phases: [
                TreatmentPhaseInfo(
                    phaseNumber: 1,
                    name: "Medical Therapy (Prolactinomas)",
                    timeline: "First-line for prolactinomas",
                    whatHappens: [
                        "Dopamine agonists: cabergoline (preferred) or bromocriptine",
                        "Tumor shrinkage in >90% of prolactinomas",
                        "Prolactin normalization in ~80% of patients",
                        "Surgery reserved for medication-resistant or intolerant cases"
                    ],
                    whatToExpect: [
                        "Medication taken orally 1-2 times per week (cabergoline)",
                        "Side effects: nausea, dizziness, fatigue (usually temporary)",
                        "Tumor shrinkage visible on MRI within weeks to months",
                        "Long-term or lifelong treatment may be needed"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 2,
                    name: "Transsphenoidal Surgery",
                    timeline: "First-line for non-prolactinomas",
                    whatHappens: [
                        "Endoscopic endonasal approach — through the nose, no external incisions",
                        "Pituitary tumor removed through the sphenoid sinus",
                        "Intraoperative MRI used for completeness assessment",
                        "Cure rates: ~80-90% for microadenomas, ~50-60% for macroadenomas"
                    ],
                    whatToExpect: [
                        "Surgery typically 1-3 hours",
                        "Hospital stay: 2-3 days",
                        "Nasal congestion and mild headache for 1-2 weeks",
                        "Temporary diabetes insipidus (excessive urination) possible post-op"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 3,
                    name: "Radiation Therapy (If Needed)",
                    timeline: "For residual or recurrent tumors",
                    whatHappens: [
                        "Stereotactic radiosurgery (Gamma Knife) for small residual tumors",
                        "Fractionated radiation for larger remnants near optic nerves",
                        "Hormone normalization may take months to years after radiation",
                        "Used as adjunct when surgery alone is insufficient"
                    ],
                    whatToExpect: [
                        "Gamma Knife: single outpatient session",
                        "Progressive hormone decline over 2-10 years (may cause pituitary insufficiency)",
                        "Risk of delayed hypopituitarism requiring hormone replacement",
                        "High tumor control rates (>90% at 10 years)"
                    ]
                ),
                TreatmentPhaseInfo(
                    phaseNumber: 4,
                    name: "Hormone Replacement & Follow-up",
                    timeline: "Ongoing",
                    whatHappens: [
                        "Regular hormone level monitoring (cortisol, thyroid, sex hormones, growth hormone)",
                        "Replacement therapy for any deficient hormones",
                        "Annual MRI for tumor recurrence surveillance",
                        "Visual field testing if near optic chiasm"
                    ],
                    whatToExpect: [
                        "Some patients need lifelong hormone replacement (hydrocortisone, levothyroxine, etc.)",
                        "Most patients return to normal quality of life",
                        "Fertility often restored after prolactinoma treatment",
                        "Recurrence rate: ~10-20% at 10 years (higher for non-functioning macroadenomas)"
                    ]
                )
            ]
        )
    )
}
