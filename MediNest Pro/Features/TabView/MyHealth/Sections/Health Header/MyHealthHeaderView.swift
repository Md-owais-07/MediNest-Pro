//
//  MyHealthHeaderView.swift
//  MediNest Pro
//
//  Created by Owais on 7/2/26.
//

import SwiftUI

struct MyHealthHeaderView: View {
    
    @State private var searchText: String = ""
    @EnvironmentObject private var sessionManager: SessionManager
    
    let action: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            
            MyProfileSection(userName: sessionManager.currentUser?.fullName ?? "Guest", contact: "9678342567", userId: sessionManager.currentUser?.id ?? "nil", userProfil: String(sessionManager.currentUser?.fullName.first ?? "G"), action: {})
            
        }
        .padding(.top, 62)
        .frame(maxWidth: .infinity)
        .frame(height: 188)
        .background(.gray.opacity(0.1))
    }
}

#Preview {
    MyHealthHeaderView(action: {})
        .environmentObject(SessionManager())
}
