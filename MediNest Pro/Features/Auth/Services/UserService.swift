//
//  UserService.swift
//  MediNest Pro
//
//  Created by Owais on 6/21/26.
//

import Foundation
import FirebaseFirestore

final class UserService {
    
    static let shared = UserService()
    private init() {}
    
    private let db = Firestore.firestore()
    
    // MARK: - Create User in Firestore
    func createUser(
        uid: String,
        fullName: String,
        email: String
    ) async throws -> AppUser {
        
        let user = AppUser(
            id: uid,
            fullName: fullName,
            email: email,
            createdAt: Date()
        )
        
        try db.collection("users").document(uid).setData(from: user)
        return user
    }
    
    // MARK: - Fetch Existing User
    func fetchUser(uid: String) async throws -> AppUser {
        let snapshot = try await db.collection("users").document(uid).getDocument()
        
        guard snapshot.exists else {
            throw NSError(
                domain: "UserService",
                code: -1,
                userInfo: [NSLocalizedDescriptionKey: "User data not found."]
            )
        }
        
        let user = try snapshot.data(as: AppUser.self)
        return user
    }
}
