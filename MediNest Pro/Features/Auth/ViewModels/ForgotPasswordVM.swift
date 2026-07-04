//
//  ForgotPasswordVM.swift
//  MediNest Pro
//
//  Created by Owais on 6/21/26.
//

import Foundation
internal import Combine

final class ForgotPasswordVM: ObservableObject {
    
    @Published var email = ""
    @Published var isLoading = false
    @Published var message: String?
    @Published var errorMessage: String?
    
    var isFormValid: Bool {
        email.contains("@")
    }
    
    func sendResetEmail() async {
        guard isFormValid else {
            errorMessage = "Please enter a valid email address."
            return
        }
        
        errorMessage = nil
        message = nil
        isLoading = true
        defer { isLoading = false }
        
        do {
            try await FirebaseAuthService.shared.sendPasswordReset(
                email: email.trimmingCharacters(in: .whitespacesAndNewlines)
            )
            message = "Password reset email sent successfully."
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}
