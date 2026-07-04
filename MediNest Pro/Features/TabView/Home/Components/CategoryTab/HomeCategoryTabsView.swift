//
//  HomeCategoryTabsView.swift
//  MediNest Pro
//
//  Created by Owais on 6/22/26.
//

import SwiftUI

struct HomeCategoryTabsView: View {
    
    @Binding var selectedCategoryTab: AppCategoryTab
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(spacing: 0) {
                HStack(spacing: 25) {
                    ForEach(AppCategoryTab.allCases) { tab in
                        HomeCategoryTabItemView(
                            tab: tab,
                            isSelected: selectedCategoryTab == tab
                        ) {
                            selectedCategoryTab = tab
                        }
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 8)
                
                Divider()
            }
        }
        .background(.white)
    }
}

#Preview {
    HomeCategoryTabsView(selectedCategoryTab: .constant(.all))
}
