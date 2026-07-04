//
//  PharmacyHeaderView.swift
//  MediNest Pro
//
//  Created by Owais on 7/1/26.
//

import SwiftUI

struct PharmacyHeaderView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(spacing: -5) {
            AppHeaderView(title: "Delivering to", delivery: "Unnao 209861", imageIcon: "wallet.bifold", titleColor: .white, iconColor: .white, leadingAction: {}, trailingAction: {})
            
            AppSearchBarView(
                text: $searchText,
                action: {
                    print("Cart tapped...")
                }
            )
        }
        .padding(.horizontal, 16)
        .background(.pharmacy)
    }
}

#Preview {
    PharmacyHeaderView()
}
