// ProgressManager.swift
// Tracks and persists user progress through learning modules, scoped per user account.

import SwiftUI

// MARK: - UserProgress Model
struct UserProgress: Codable {
    var completedModules: Set<String> = []
    var completedModulesOrder: [String] = []
    var inProgressModules: Set<String> = []
    var unlockedModules: Set<String> = []
    var lastViewedTab: [String: Int] = [:]
    var viewedTabs: [String: Set<Int>] = [:]
    var hasSeenLanding: Bool = false

    init() {
        self.unlockedModules = ["glioblastoma", "meningioma", "brain_metastases"]
    }

    // Custom decoder for backward compatibility with existing UserDefaults data
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        completedModules = try container.decodeIfPresent(Set<String>.self, forKey: .completedModules) ?? []
        completedModulesOrder = try container.decodeIfPresent([String].self, forKey: .completedModulesOrder) ?? []
        inProgressModules = try container.decodeIfPresent(Set<String>.self, forKey: .inProgressModules) ?? []
        unlockedModules = try container.decodeIfPresent(Set<String>.self, forKey: .unlockedModules) ?? ["glioblastoma", "meningioma", "brain_metastases"]
        lastViewedTab = try container.decodeIfPresent([String: Int].self, forKey: .lastViewedTab) ?? [:]
        viewedTabs = try container.decodeIfPresent([String: Set<Int>].self, forKey: .viewedTabs) ?? [:]
        hasSeenLanding = try container.decodeIfPresent(Bool.self, forKey: .hasSeenLanding) ?? false
    }

    private enum CodingKeys: String, CodingKey {
        case completedModules, completedModulesOrder, inProgressModules
        case unlockedModules, lastViewedTab, viewedTabs, hasSeenLanding
    }
}

// MARK: - Progress Manager (Per-User)
@MainActor @Observable
class ProgressManager {
    var progress: UserProgress {
        didSet {
            save()
        }
    }

    private let userDefaultsKey: String

    init(username: String) {
        self.userDefaultsKey = "neuramigo.progress.\(username)"
        if let data = UserDefaults.standard.data(forKey: userDefaultsKey),
           let decoded = try? JSONDecoder().decode(UserProgress.self, from: data) {
            self.progress = decoded
        } else {
            self.progress = UserProgress()
        }
    }

    // MARK: - Save to UserDefaults
    private func save() {
        if let encoded = try? JSONEncoder().encode(progress) {
            UserDefaults.standard.set(encoded, forKey: userDefaultsKey)
        }
    }

    // MARK: - Module Progress

    func startModule(_ diseaseID: String) {
        progress.inProgressModules.insert(diseaseID)
    }

    func viewTab(diseaseID: String, tabIndex: Int) {
        if progress.viewedTabs[diseaseID] == nil {
            progress.viewedTabs[diseaseID] = []
        }

        progress.viewedTabs[diseaseID]?.insert(tabIndex)
        progress.lastViewedTab[diseaseID] = tabIndex

        // Auto-start module on first tab view
        if !progress.inProgressModules.contains(diseaseID) && !progress.completedModules.contains(diseaseID) {
            startModule(diseaseID)
        }
    }

    func allTabsViewed(for diseaseID: String) -> Bool {
        guard let viewedSet = progress.viewedTabs[diseaseID] else { return false }
        return viewedSet.count >= 5
    }

    func completeModule(_ diseaseID: String) {
        let wasAlreadyCompleted = progress.completedModules.contains(diseaseID)
        progress.completedModules.insert(diseaseID)
        progress.inProgressModules.remove(diseaseID)

        if !wasAlreadyCompleted {
            progress.completedModulesOrder.removeAll { $0 == diseaseID }
            progress.completedModulesOrder.append(diseaseID)
            unlockNextModules()
        }
    }

    private func unlockNextModules() {
        let moduleOrder = DiseaseData.interactiveModules.map { $0.id }
        let locked = moduleOrder.filter { !progress.unlockedModules.contains($0) }
        let toUnlock = Array(locked.prefix(2))
        for module in toUnlock {
            progress.unlockedModules.insert(module)
        }
    }

    func isUnlocked(_ diseaseID: String) -> Bool {
        return progress.unlockedModules.contains(diseaseID)
    }

    func isCompleted(_ diseaseID: String) -> Bool {
        return progress.completedModules.contains(diseaseID)
    }

    func isInProgress(_ diseaseID: String) -> Bool {
        return progress.inProgressModules.contains(diseaseID)
    }

    func getLastViewedTab(for diseaseID: String) -> Int {
        return progress.lastViewedTab[diseaseID] ?? 0
    }

    func getProgressPercentage(for diseaseID: String) -> Double {
        guard let viewedSet = progress.viewedTabs[diseaseID] else {
            return 0.0
        }
        return Double(viewedSet.count) / 5.0
    }

    func resetProgress() {
        progress = UserProgress()
    }
}
