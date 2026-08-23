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
                    navManager.push(.homeTab(.wallet))
                },
                trailingAction: {
                    navManager.push(.homeTab(.profile))
                },
                locationAction: {
                    locationAction()
                }
            )
            
            HeaderSearchView(
                text: $searchText,
                showScanButton: true,
                showCartButton: true,
                disableTextField: true,
                leadinIcon: "magnifyingglass",
                placeHolderText: "Search",
                action: {
                    navManager.push(.homeTab(.cart))
                }
            )
            .onTapGesture {
                navManager.push(.homeTab(.search))
            }
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
