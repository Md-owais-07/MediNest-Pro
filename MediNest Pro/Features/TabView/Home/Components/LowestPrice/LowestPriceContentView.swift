//
//  LowestPriceContentView.swift
//  MediNest Pro
//
//  Created by Owais on 6/25/26.
//

import SwiftUI

struct LowestPriceContentView: View {
    @State private var selectedTab: LowestPriceCategoryTab = .dailyneed
    
    var body: some View {
        VStack(spacing: 30) {
            LowestPriceView(selectedCategoryTab: $selectedTab)
            LowestTabsContent(selectedTab: selectedTab)
        }
        .background(
            Color.appLightGreen
        )
    }
}

#Preview {
    LowestPriceContentView()
}
