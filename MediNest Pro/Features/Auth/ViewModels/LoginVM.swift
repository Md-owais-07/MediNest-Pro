//
//  LoginVM.swift
//  MediNest Pro
//
//  Created by Owais on 6/21/26.
//

import Foundation
import FirebaseAuth
internal import Combine

final class LoginVM: ObservableObject {
    
    @Published var email = "ts2@gmail.com"
    @Published var password = "123456"
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    var isFormValid: Bool {
        !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
        email.contains("@") &&
        !password.isEmpty
    }
    
    func login() async throws -> AppUser {
        guard isFormValid else {
            throw NSError(
                domain: "LoginVM",
                code: -1,
                userInfo: [NSLocalizedDescriptionKey: "Please enter valid email and password."]
            )
        }
        
        errorMessage = nil
        isLoading = true
        defer { isLoading = false }
        
        let firebaseUser = try await FirebaseAuthService.shared.signIn(
            email: email.trimmingCharacters(in: .whitespacesAndNewlines),
            password: password
        )
        
        let user = try await UserService.shared.fetchUser(uid: firebaseUser.uid)
        return user
    }
}
