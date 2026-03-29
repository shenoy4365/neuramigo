// AuthView.swift
// Login and registration screen for local user authentication.

import SwiftUI

struct AuthView: View {
    @State private var isRegistering = false
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var errorMessage: String?

    var body: some View {
        ZStack {
            NeurAmigoTheme.primaryBackground
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: NeurAmigoTheme.spacingXL) {
                    Spacer().frame(maxHeight: 40)

                    // MARK: - Branding
                    BrainIllustrationView()

                    VStack(spacing: 12) {
                        Text("NeurAmigo")
                            .font(NeurAmigoFont.display)
                            .foregroundColor(NeurAmigoTheme.textPrimary)

                        Text(isRegistering ? "Create your account" : "Sign in to continue")
                            .font(NeurAmigoFont.body)
                            .foregroundColor(NeurAmigoTheme.textSecondary)
                    }

                    // MARK: - Form Fields
                    VStack(spacing: NeurAmigoTheme.spacingM) {
                        TextField("Username", text: $username)
                            .textFieldStyle(NeurAmigoTextFieldStyle())
                            .textInputAutocapitalization(.never)
                            .autocorrectionDisabled()

                        SecureField("Password", text: $password)
                            .textFieldStyle(NeurAmigoTextFieldStyle())

                        if isRegistering {
                            SecureField("Confirm Password", text: $confirmPassword)
                                .textFieldStyle(NeurAmigoTextFieldStyle())
                        }

                        // Error message
                        if let errorMessage {
                            Text(errorMessage)
                                .font(NeurAmigoFont.caption)
                                .foregroundColor(NeurAmigoTheme.confirmedRisk)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .padding(.horizontal, 20)

                    // MARK: - Action Buttons
                    VStack(spacing: NeurAmigoTheme.spacingM) {
                        Button {
                            performAction()
                        } label: {
                            Text(isRegistering ? "Create Account" : "Sign In")
                                .font(NeurAmigoFont.subheadline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: NeurAmigoTheme.buttonHeight)
                                .background(NeurAmigoTheme.primaryButton)
                                .cornerRadius(NeurAmigoTheme.cornerRadius)
                        }
                        .buttonStyle(BouncyButtonStyle())

                        // Toggle between sign in and register
                        Button {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                isRegistering.toggle()
                                errorMessage = nil
                                confirmPassword = ""
                            }
                        } label: {
                            Text(isRegistering ? "Already have an account? Sign In" : "Don't have an account? Create one")
                                .font(NeurAmigoFont.caption)
                                .foregroundColor(NeurAmigoTheme.accentBlue)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 40)
                }
            }
        }
    }

    // MARK: - Authentication Logic

    /// Handles sign-in or registration based on the current mode.
    private func performAction() {
        errorMessage = nil

        if isRegistering {
            guard password == confirmPassword else {
                errorMessage = "Passwords do not match."
                return
            }
            do {
                try AuthManager.shared.register(username: username, password: password)
            } catch {
                errorMessage = error.localizedDescription
            }
        } else {
            do {
                try AuthManager.shared.signIn(username: username, password: password)
            } catch {
                errorMessage = error.localizedDescription
            }
        }
    }
}

// MARK: - Custom Text Field Style
struct NeurAmigoTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .font(NeurAmigoFont.body)
            .padding()
            .background(NeurAmigoTheme.surfaceLight)
            .cornerRadius(NeurAmigoTheme.cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: NeurAmigoTheme.cornerRadius)
                    .stroke(NeurAmigoTheme.accentBlue.opacity(0.3), lineWidth: 1)
            )
    }
}

#Preview {
    AuthView()
}
