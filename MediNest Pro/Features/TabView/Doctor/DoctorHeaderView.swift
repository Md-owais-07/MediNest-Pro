//
//  DoctorHeaderView.swift
//  MediNest Pro
//
//  Created by Owais on 7/2/26.
//

import SwiftUI

struct DoctorHeaderView: View {
    @State private var searchText: String = ""
    @EnvironmentObject var location: LocationManager
    
    let locationAction: () -> Void
    
    var body: some View {
        VStack(spacing: -5) {
            AppHeaderView(
                title: "Find Doctors near",
                delivery: (location.currentLocation?.city ?? "Fetching...") + " " + (location.currentLocation?.postalCode ?? ""),
                imageIcon: "wallet.bifold",
                titleColor: .black,
                iconColor: .black,
                leadingAction: {},
                trailingAction: {},
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
        .background(.doctor)
    }
}

#Preview {
    DoctorHeaderView(locationAction: {})
}
