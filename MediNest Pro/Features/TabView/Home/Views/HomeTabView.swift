//
//  HomeTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct HomeTabView: View {
    
    @EnvironmentObject var navManager: NavigationManager
    @EnvironmentObject var location: LocationManager
    @EnvironmentObject var presentation: PresentationManager
    
    @State private var selectedTab: AppCategoryTab = .all
    
    var body: some View {
        ZStack(alignment: .top) {
            TopSafeAreaOnly(bgColor: .primaryButton)
            
            VStack(spacing: 0) {
                HomeHeaderView(locationAction: {
                    withAnimation(.default) {
                        presentation.showLocationSheet = true
                    }
                })
                
                HomeCategoryTabsView(selectedCategoryTab: $selectedTab)
                HomeCategoryContentView(selectedTab: selectedTab)
            }
        }
        .onAppear {
            location.requestPermission()
        }
    }
}

#Preview {
    HomeTabView()
        .environmentObject(NavigationManager())
        .environmentObject(LocationManager())
        .environmentObject(PresentationManager())
        .environmentObject(SessionManager())
}
