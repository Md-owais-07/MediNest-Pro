//
//  PharmacyWellBeingView.swift
//  MediNest Pro
//
//  Created by Owais on 7/7/26.
//

import SwiftUI

struct PharmacyWellBeingView: View {
    @Binding var selectedCategoryTab: PharmacyWellBeingTab
    let device = UIDevice.current.userInterfaceIdiom == .pad
    
    var body: some View {
        VStack {
            Text("Everything for your well-being")
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: device ? 80 : 20) {
                    ForEach(PharmacyWellBeingTab.allCases) { tab in
                        PharmacyWellBeingItemView(tab: tab, isSelected: selectedCategoryTab == tab) {
                            selectedCategoryTab = tab
                        }
                    }
                } 
                .padding(.horizontal, 16)
                .padding(.vertical, 20)
            }
        }.padding(.top, 30)
    }
}

#Preview {
    PharmacyWellBeingView(selectedCategoryTab: .constant(.personal))
}
