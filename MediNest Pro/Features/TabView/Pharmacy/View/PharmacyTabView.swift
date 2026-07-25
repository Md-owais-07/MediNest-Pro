//
//  PharmacyTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct PharmacyTabView: View {
    @EnvironmentObject private var presentation: PresentationManager
    
    @State private var selectedTab: PharmacyWellBeingTab = .personal
    
    var body: some View {
        NavigationStack {
            
            ZStack(alignment: .top) {
                TopSafeAreaOnly(bgColor: .pharmacy)
                
                VStack(spacing: 0) {
                    PharmacyHeaderView {
                        withAnimation(.spring()) {
                            presentation.showLocationSheet = true
                        }
                    }
                    
                    ScrollView(showsIndicators: false) {
                        Image("pharmacyBanner")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                        PharmacyHeaderGrid(items: PharmacyHeaderCardData)
                        
                        BannerCarouselView(banners: banners)
                        
                        PharmacyWellBeingView(selectedCategoryTab: $selectedTab)
                        PharmacyWellBeingTabContent(selectedTab: selectedTab)
                        PharmacySpecialOfferView(items: PharmacySpecialOfferData)
                        PharmacyCravingsView()
                            .padding(.top, 25)
                        
                        BottomView(prodText: nil, iconLeading: nil, iconCenter: "fp", iconTrailing: nil)
                        
                        Color.clear.frame(height: 100)
                    }
                }
            }
        }
    }
}

#Preview {
    PharmacyTabView()
        .environmentObject(LocationManager())
}
