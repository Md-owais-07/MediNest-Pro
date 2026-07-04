//
//  CategoryGridSection.swift
//  MediNest Pro
//
//  Created by Owais on 6/24/26.
//

import SwiftUI

struct CategoryGridSection: View {
    @EnvironmentObject var navManager: AppNavigationManager
    
    private let columns = [
        GridItem(.flexible(), spacing: 14),
        GridItem(.flexible(), spacing: 14)
    ]
    
    let items: [CategoryCardItem]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 8) {
            ForEach(items) { item in
                CategoryCardView(item: item) {
                    categoryTapped(item)
                }
            }
        }
        .padding(.horizontal, 16)
    }
    
    private func categoryTapped(_ item: CategoryCardItem) {
        switch item.action {
        case .switchToPharmacy:
            navManager.switchTab(.pharmacy)
        case .switchToLabTests:
            navManager.switchTab(.labTests)
        case .switchToDoctor:
            navManager.switchTab(.doctors)
        case .switchToInsurance:
            navManager.switchTab(.insurance)
        }
    }
}

#Preview {
    CategoryGridSection(items: categoryDummuData)
}
