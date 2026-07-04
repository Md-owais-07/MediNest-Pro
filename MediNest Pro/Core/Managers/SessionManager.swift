//
//  SessionManager.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI
import FirebaseAuth
internal import Combine

final class SessionManager: ObservableObject {
    
    @Published var isLoading = true
    @Published var isLoggedIn = false
    @Published var currentUser: AppUser?
    
    init() {
        checkSession()
    }
    
    func checkSession() {
        Task {
            // 1) Ask Firebase if a user session actually exists
            guard let firebaseUser = Auth.auth().currentUser else {
                self.currentUser = nil
                self.isLoggedIn = false
                self.isLoading = false
                return
            }
            
            do {
                // 2) If Firebase user exists, fetch the Firestore profile
                let user = try await UserService.shared.fetchUser(uid: firebaseUser.uid)
                self.currentUser = user
                self.isLoggedIn = true
                self.isLoading = false
            } catch {
                // 3) If Firestore profile fetch fails, sign out and show login
                do {
                    try Auth.auth().signOut()
                } catch {
                    print("Firebase signOut error: \(error.localizedDescription)")
                }
                
                self.currentUser = nil
                self.isLoggedIn = false
                self.isLoading = false
                print("Session restore failed: \(error.localizedDescription)")
            }
        }
    }
    
    func login(user: AppUser) {
        currentUser = user
        isLoggedIn = true
    }
    
    func logout() {
        do {
            try Auth.auth().signOut()
        } catch {
            print("Logout error: \(error.localizedDescription)")
        }
        
        currentUser = nil
        isLoggedIn = false
    }
}
