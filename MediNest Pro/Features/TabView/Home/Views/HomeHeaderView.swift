//
//  HomeHeaderView.swift
//  MediNest Pro
//
//  Created by Owais on 6/24/26.
//

import SwiftUI

struct HomeHeaderView: View {
    
    @EnvironmentObject var navManager: NavigationManager
    @EnvironmentObject var session: SessionManager
    @EnvironmentObject var location: LocationManager
    
    @State private var searchText: String = ""
    
    let locationAction: () -> Void
    
    var body: some View {
        VStack(spacing: -5) {
            AppHeaderView(
                title: session.currentUser?.fullName ?? "Guest",
                delivery: (location.currentLocation?.city ?? "Fetching...") + " " + (location.currentLocation?.postalCode ?? ""),
                imageIcon: "wallet.bifold",
                titleColor: .white,
                iconColor: .white,
                leadingAction: {
                    navManager.pushHome(.wallet)
                },
                trailingAction: {
                    navManager.pushHome(.profile)
                },
                locationAction: {
                    locationAction()
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
    HomeHeaderView(locationAction: {})
        .environmentObject(SessionManager())
        .environmentObject(NavigationManager())
        .environmentObject(LocationManager())
}
