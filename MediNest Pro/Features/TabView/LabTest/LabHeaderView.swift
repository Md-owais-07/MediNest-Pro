//
//  LabHeaderView.swift
//  MediNest Pro
//
//  Created by Owais on 7/2/26.
//

import SwiftUI

struct LabHeaderView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(spacing: -5) {
            AppHeaderView(
                title: "Collect Samples from",
                delivery: "Unnao 209861",
                imageIcon: "wallet.bifold",
                titleColor: .black,
                iconColor: .black,
                leadingAction: {},
                trailingAction: {}
            )
            
            AppSearchBarView(
                text: $searchText,
                action: {
                    print("Cart tapped...")
                }
            )
        }
        .padding(.horizontal, 16)
        .background(.lab)
    }
}

#Preview {
    LabHeaderView()
}
