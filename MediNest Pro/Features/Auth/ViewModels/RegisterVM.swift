//
//  RegisterVM.swift
//  MediNest Pro
//
//  Created by Owais on 6/21/26.
//

import Foundation
import FirebaseAuth
internal import Combine

final class RegisterVM: ObservableObject {
    
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    var isFormValid: Bool {
        !fullName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
        email.contains("@") &&
        password.count >= 6
    }
    
    func register() async throws -> AppUser {
        guard isFormValid else {
            throw NSError(
                domain: "RegisterVM",
                code: -1,
                userInfo: [NSLocalizedDescriptionKey: "Please enter valid details."]
            )
        }
        
        errorMessage = nil
        isLoading = true
        defer { isLoading = false }
        
        let firebaseUser = try await FirebaseAuthService.shared.signUp(
            email: email.trimmingCharacters(in: .whitespacesAndNewlines),
            password: password
        )
        
        let user = try await UserService.shared.createUser(
            uid: firebaseUser.uid,
            fullName: fullName.trimmingCharacters(in: .whitespacesAndNewlines),
            email: email.trimmingCharacters(in: .whitespacesAndNewlines)
        )
        
        return user
    }
}
