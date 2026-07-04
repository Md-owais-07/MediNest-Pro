//
//  File.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var selectedTab: AppTab
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(AppTab.allCases) { tab in
                TabBarItemView(
                    tab: tab,
                    isSelected: selectedTab == tab
                ) {
                    withAnimation(.easeInOut(duration: 0.1)) {
                        selectedTab = tab
                    }
                }
            }
        }
        .padding(.horizontal, 4)
        .padding(.top, 10)
        .padding(.bottom, -15)
        .background(.white)
        .overlay(alignment: .top) {
            Divider()
        }
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(.home))
}
