# NeurAmigo: Interactive Neuroscience Learning App

NeurAmigo is an interactive neuroscience education app built with Swift Playgrounds, designed to make complex neurological concepts accessible and engaging. The platform features structured learning modules covering a wide range of neurological diseases, an interactive disease encyclopedia, and a personalized dashboard to track learning progress.

The application provides on-device authentication via Keychain, detailed disease breakdowns across anatomy, symptoms, risk factors, and treatments, progress tracking across all modules, and curated external resources — all within a clean, modern SwiftUI interface optimized for iPhone and iOS.

---

## 📸 Screenshots

will be updating soon...

<p align="center">
  <img src="NeurAmigo_Dashboard_Screen.png" alt="Dashboard Screen" width="250"/>
  <img src="NeurAmigo_Module_Screen.png" alt="Module Screen" width="250"/>
  <img src="NeurAmigo_Disease_Encyclopedia_Screen.png" alt="Disease Encyclopedia Screen" width="250"/>
</p>

---

## 🚀 Features

- **Comprehensive disease modules** covering 15+ neurological conditions including Alzheimer's, Parkinson's, ALS, Multiple Sclerosis, and brain tumors
- **Interactive learning tabs** breaking down each disease into Overview, Anatomy, Symptoms, Risk Factors, and Treatment sections
- **Disease encyclopedia** for quick reference and browsing across all neurological conditions
- **Progress tracking dashboard** to monitor completion across all learning modules
- **On-device authentication** using Keychain for secure, local user profiles with no external servers
- **Curated resources & support** with links to external learning materials and organizations
- **Modern SwiftUI interface** with a consistent theme and responsive layout optimized for iPhone
- **Fully offline** — no internet connection or backend required

---

## 🛠 Tech Stack

- [Swift Playgrounds](https://www.apple.com/swift/playgrounds/) — Native Swift development environment for iPhone and iOS
- [SwiftUI](https://developer.apple.com/xcode/swiftui/) — Declarative UI framework for building modern Apple interfaces
- [Keychain Services](https://developer.apple.com/documentation/security/keychain_services) — Secure on-device credential storage for authentication
- [UserDefaults](https://developer.apple.com/documentation/foundation/userdefaults) — Lightweight local persistence for tracking module progress

---

## 📦 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/shenoy4365/neuramigo.git
cd neuramigo
```
### 2. Open in Swift Playgrounds or Xcode

- **Swift Playgrounds (iPad/Mac):** Open the `NeurAmigo.swiftpm` package directly in Swift Playgrounds.
- **Xcode (Mac):** Open `NeurAmigo.swiftpm` as a Swift Package in Xcode for development and testing.

### 3. Run the app

Build and run on an iPad simulator or a connected device. No additional dependencies, API keys, or backend setup required — the app runs entirely on-device.

---

## 📁 Project Structure

    NeurAmigo.swiftpm/
    ├── NeurAmigoApp.swift                  # App entry point
    ├── RootView.swift                      # Root navigation controller
    ├── ContentView.swift                   # Main tab-based navigation
    ├── AuthView.swift                      # Login/signup interface
    ├── AuthManager.swift                   # Authentication state management
    ├── KeychainHelper.swift                # Secure Keychain read/write operations
    ├── ProgressManager.swift               # Module progress tracking logic
    ├── DashboardView.swift                 # User dashboard with progress overview
    ├── ModuleSelectionView.swift           # Module browsing and selection
    ├── DiseaseEncyclopediaView.swift       # Searchable disease reference
    ├── ResourcesSupportView.swift          # External resources and support links
    ├── LandingPageView.swift               # Welcome/onboarding screen
    ├── Theme.swift                         # App-wide colors, fonts, and styling
    ├── InteractiveLearning/                # Disease-specific content and tab views
    │   ├── ModuleDetailView.swift          # Tabbed detail view for each disease
    │   ├── OverviewTab.swift               # Disease overview content
    │   ├── AnatomyTab.swift                # Affected brain anatomy
    │   ├── SymptomsTab.swift               # Symptoms breakdown
    │   ├── RiskFactorsTab.swift            # Risk factor analysis
    │   ├── TreatmentTab.swift              # Treatment options
    │   ├── DiseaseContent.swift            # Content data models
    │   ├── DiseaseContentRegistry.swift    # Registry mapping diseases to content
    │   ├── AlzheimersData.swift            # Alzheimer's disease module data
    │   ├── ParkinsonsData.swift            # Parkinson's disease module data
    │   ├── GlioblastomaData.swift          # Glioblastoma module data
    │   └── ...                             # Additional disease data files
    └── Assets.xcassets/                    # App icons and asset catalog

---

## Deployment

NeurAmigo has not been officially deployed to any mobile or online platforms as of the current date. Any updates to deployment will be reflected in this README file.

## Contributing and Contact

Contributions are welcome! Please feel free to submit a Pull Request if you have any suggestions or improvements that you feel Oculare could use.

## License
All source code, AI models, and implementation logic in this repository were developed exclusively by the repository owner. Unauthorized reproduction, distribution, or modification of this code is prohibited without prior written permission.
