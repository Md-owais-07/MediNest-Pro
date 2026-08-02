//
//  LowestPriceContentView.swift
//  MediNest Pro
//
//  Created by Owais on 6/25/26.
//

import SwiftUI

struct LowestPriceContentView: View {
    @State private var selectedTab: LowestPriceCategoryTab = .dailyneed
//    let bgColor: Color
    
    var body: some View {
        VStack(spacing: 30) {
            LowestPriceView(selectedCategoryTab: $selectedTab, banner: "banner")
            LowestTabsContent(selectedTab: selectedTab)
            LowestPriceDetailsButton(action: {})
//                .padding(.top, 20)
        }
//        .background(
//            bgColor
//        )
    }
}

#Preview {
    LowestPriceContentView()
}
