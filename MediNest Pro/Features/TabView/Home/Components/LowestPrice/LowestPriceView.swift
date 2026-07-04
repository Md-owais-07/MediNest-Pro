//
//  LowestPriceView.swift
//  MediNest Pro
//
//  Created by Owais on 6/25/26.
//

import SwiftUI

struct LowestPriceView: View {
    @Binding var selectedCategoryTab: LowestPriceCategoryTab
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Image("banner")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(LowestPriceCategoryTab.allCases) { tab in
                            LowestPriceTab(
                                tab: tab,
                                isSelected: selectedCategoryTab == tab
                            ) {
                                selectedCategoryTab = tab
                            }
                        }
                    }.padding(.horizontal, 16)
                }
                Divider()
            }
        }
    }
}

#Preview {
    LowestPriceView(selectedCategoryTab: .constant(.dailyneed))
}
