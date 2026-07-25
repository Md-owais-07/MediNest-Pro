//
//  PharmacyWellBeingTabContent.swift
//  MediNest Pro
//
//  Created by Owais on 7/7/26.
//

import SwiftUI

struct PharmacyWellBeingTabContent: View {
    let selectedTab: PharmacyWellBeingTab
    
    var body: some View {
        switch selectedTab {
        case .personal:
            PharmacyPersonalCareTabView(items: PharmacyPersonalCareData)
        case .nutrition:
            PharmacyNutritionTabView()
        case .baby:
            PharmacyBabyCareTabView()
        case .quick:
            PharmacyQuickTabView()
        case .lifestyle:
            PharmacyLifestyleTabView()
        case .care:
            PharmacyCareTabView()
        }
    }
}

#Preview {
    PharmacyWellBeingTabContent(selectedTab: .personal)
}
