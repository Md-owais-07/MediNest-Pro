//
//  HomeHeaderView.swift
//  MediNest Pro
//
//  Created by Owais on 6/24/26.
//

import SwiftUI

struct HomeHeaderView: View {
    
    @EnvironmentObject var navManager: AppNavigationManager
    @EnvironmentObject var session: SessionManager
    
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(spacing: -5) {
            AppHeaderView(
                title: session.currentUser?.fullName ?? "Guest",
                delivery: "Unnao 209861",
                imageIcon: "wallet.bifold",
                titleColor: .white,
                iconColor: .white,
                leadingAction: {
                    navManager.pushHome(.wallet)
                },
                trailingAction: {
                    navManager.pushHome(.profile)
                }
            )
            
            AppSearchBarView(
                text: $searchText,
                action: {
                    print("Cart tapped...")
                }
            )
        }
        .padding(.horizontal, 16)
        .background(
            LinearGradient(
                colors: [.primaryButton, .white],
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }
}

#Preview {
    HomeHeaderView()
}
