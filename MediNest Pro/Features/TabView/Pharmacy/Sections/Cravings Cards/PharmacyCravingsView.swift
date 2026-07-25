//
//  PharmacyCravingsView.swift
//  MediNest Pro
//
//  Created by Owais on 7/10/26.
//

import SwiftUI

struct PharmacyCravingsView: View {
    @State private var selectedTab: LowestPriceCategoryTab = .dailyneed
    
    var body: some View {
        VStack(spacing: 30) {
            LowestPriceView(selectedCategoryTab: $selectedTab, banner: "pharmacyCardBanner")
            LowestTabsContent(selectedTab: selectedTab)
        }
        .background(
            LinearGradient(colors: [.pharmacyBG, .pharmacyBG.opacity(0.05)], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    PharmacyCravingsView()
}
