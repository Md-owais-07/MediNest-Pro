//
//  HomeTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct HomeTabView: View {
    
    @EnvironmentObject var navManager: AppNavigationManager
    
    @State private var selectedTab: AppCategoryTab = .all
    
    var body: some View {
        ZStack(alignment: .top) {
            TopSafeAreaOnly(bgColor: .primaryButton)
            
            VStack(spacing: 0) {
                HomeHeaderView()
                HomeCategoryTabsView(selectedCategoryTab: $selectedTab)
                HomeCategoryContentView(selectedTab: selectedTab)
            }
        }
    }
}

#Preview {
    HomeTabView()
}
