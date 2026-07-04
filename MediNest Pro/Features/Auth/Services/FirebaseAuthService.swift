//
//  FirebaseAuthService.swift
//  MediNest Pro
//
//  Created by Owais on 6/21/26.
//

import Foundation
import FirebaseAuth

final class FirebaseAuthService {
    
    static let shared = FirebaseAuthService()
    private init() {}
    
    // MARK: - Sign Up
    func signUp(email: String, password: String) async throws -> User {
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        return result.user
    }
    
    // MARK: - Sign In
    func signIn(email: String, password: String) async throws -> User {
        let result = try await Auth.auth().signIn(withEmail: email, password: password)
        return result.user
    }
    
    // MARK: - Forgot Password
    func sendPasswordReset(email: String) async throws {
        try await Auth.auth().sendPasswordReset(withEmail: email)
    }
    
    // MARK: - Sign Out
    func signOut() throws {
        try Auth.auth().signOut()
    }
    
    // MARK: - Current Firebase User
    var currentUser: User? {
        Auth.auth().currentUser
    }
}
