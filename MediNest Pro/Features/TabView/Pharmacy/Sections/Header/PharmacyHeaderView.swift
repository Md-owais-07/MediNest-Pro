//
//  PharmacyHeaderView.swift
//  MediNest Pro
//
//  Created by Owais on 7/1/26.
//

import SwiftUI

struct PharmacyHeaderView: View {
    
    @State private var searchText: String = ""
    @EnvironmentObject var location: LocationManager
    @EnvironmentObject var navManager: NavigationManager
    
    let locationAction: () -> Void
    
    var body: some View {
        VStack(spacing: -5) {
            AppHeaderView(
                title: "Delivering to",
                delivery: (location.currentLocation?.city ?? "Fetching...") + " " +                         (location.currentLocation?.postalCode ?? ""),
                imageIcon: "wallet.bifold",
                titleColor: .white,
                iconColor: .white,
                leadingAction: {},
                trailingAction: {},
                locationAction: {
                    locationAction()
                }
            )
            
            HeaderSearchView(
                text: $searchText,
                showScanButton: true,
                showCartButton: true,
                leadinIcon: "magnifyingglass",
                placeHolderText: "Search",
                action: {
                    navManager.push(.pharmacyTab(.cart))
                }
            )
        }
        .padding(.horizontal, 16)
        .background(.pharmacy)
    }
}

#Preview {
    PharmacyHeaderView(locationAction: {})
}
