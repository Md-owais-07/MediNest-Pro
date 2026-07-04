//
//  DoctorHeaderView.swift
//  MediNest Pro
//
//  Created by Owais on 7/2/26.
//

import SwiftUI

struct DoctorHeaderView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(spacing: -5) {
            AppHeaderView(title: "Find Doctors near", delivery: "Unnao 209861", imageIcon: "wallet.bifold", titleColor: .black, iconColor: .black, leadingAction: {}, trailingAction: {})
            
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
    DoctorHeaderView()
}
