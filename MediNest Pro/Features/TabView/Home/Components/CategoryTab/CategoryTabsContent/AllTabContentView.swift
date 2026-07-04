//
//  AllTabContentView.swift
//  MediNest Pro
//
//  Created by Owais on 7/1/26.
//

import SwiftUI

struct AllTabContentView: View {
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            CategoryGridSection(items: categoryDummuData)
            PrescriptionBanner()
            LowestPriceContentView()
            MainBodyCheckupView()
            OfferView(offers: offers)
            CategoriesView(categories: categoriesData)
            ExploreCardView(card: exploreCardData)
            BottomView()
            
            Color.clear.frame(height: 100)
            
            ScrollOffsetReader()
        }
        .trackScrollDirection()
    }
}

#Preview {
    AllTabContentView()
}
