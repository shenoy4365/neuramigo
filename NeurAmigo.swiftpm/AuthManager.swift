// AuthManager.swift
// Manages local user accounts, authentication state, and session persistence.

import SwiftUI

enum AuthError: LocalizedError {
    case usernameAlreadyExists
    case userNotFound
    case incorrectPassword
    case emptyUsername
    case emptyPassword

    var errorDescription: String? {
        switch self {
        case .usernameAlreadyExists: return "An account with this username already exists."
        case .userNotFound: return "No account found with this username."
        case .incorrectPassword: return "Incorrect password."
        case .emptyUsername: return "Please enter a username."
        case .emptyPassword: return "Please enter a password."
        }
    }
}

@MainActor @Observable
class AuthManager {
    static let shared = AuthManager()

    var currentUsername: String?
    var progressManager: ProgressManager?

    var isAuthenticated: Bool {
        currentUsername != nil
    }

    private(set) var registeredUsernames: [String] = []

    private let registeredUsersKey = "neuramigo.registeredUsers"
    private let sessionKey = "neuramigo.currentSession"

    private init() {
        // Load registered users
        registeredUsernames = UserDefaults.standard.stringArray(forKey: registeredUsersKey) ?? []

        // Restore session if valid
        if let savedUsername = UserDefaults.standard.string(forKey: sessionKey),
           registeredUsernames.contains(savedUsername) {
            currentUsername = savedUsername
            progressManager = ProgressManager(username: savedUsername)
        }
    }

    func register(username: String, password: String) throws {
        let trimmedUsername = username.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmedUsername.isEmpty else { throw AuthError.emptyUsername }
        guard !password.isEmpty else { throw AuthError.emptyPassword }
        guard !registeredUsernames.contains(trimmedUsername) else { throw AuthError.usernameAlreadyExists }

        try KeychainHelper.savePassword(password, for: trimmedUsername)

        registeredUsernames.append(trimmedUsername)
        UserDefaults.standard.set(registeredUsernames, forKey: registeredUsersKey)

        // Auto sign-in after registration
        currentUsername = trimmedUsername
        progressManager = ProgressManager(username: trimmedUsername)
        UserDefaults.standard.set(trimmedUsername, forKey: sessionKey)
    }

    func signIn(username: String, password: String) throws {
        let trimmedUsername = username.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmedUsername.isEmpty else { throw AuthError.emptyUsername }
        guard !password.isEmpty else { throw AuthError.emptyPassword }
        guard registeredUsernames.contains(trimmedUsername) else { throw AuthError.userNotFound }

        guard let storedPassword = KeychainHelper.getPassword(for: trimmedUsername),
              storedPassword == password else {
            throw AuthError.incorrectPassword
        }

        currentUsername = trimmedUsername
        progressManager = ProgressManager(username: trimmedUsername)
        UserDefaults.standard.set(trimmedUsername, forKey: sessionKey)
    }

    func signOut() {
        currentUsername = nil
        progressManager = nil
        UserDefaults.standard.removeObject(forKey: sessionKey)
    }
}
