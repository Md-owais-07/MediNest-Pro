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
//            HStack(spacing: 18) {
//                
//                Button(action: action) {
//                    Image(systemName: "person")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 18, height: 18)
//                        .foregroundStyle(.black)
//                        .background(
//                            Circle()
//                                .fill(Color.textGray.opacity(0.5))
//                                .frame(width: 40, height: 40)
//                            
//                            
//                        )
//                }
//                .padding(.bottom, 8)
//                
//                AppHeaderView(
//                    title: "Showing Records Of",
//                    delivery: session.currentUser?.fullName ?? "Guest",
//                    imageIcon: "questionmark.circle",
//                    titleColor: .black,
//                    iconColor: .black,
//                    leadingAction: {},
//                    trailingAction: {},
//                    locationAction: {}
//                )
//            }
//            .padding(.horizontal, 10)
//            
//            AppSearchBarView(
//                text: $searchText,
//                action: {
//                    print("Cart tapped...")
//                }
//            )
            
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
