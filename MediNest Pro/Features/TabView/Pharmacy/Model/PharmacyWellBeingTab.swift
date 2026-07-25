//
//  PharmacyWellBeingModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/7/26.
//

import SwiftUI

enum PharmacyWellBeingTab: String, CaseIterable, Identifiable {
    case personal
    case nutrition
    case baby
    case quick
    case lifestyle
    case care
    
    var id: String { rawValue }
    
    var title: String {
        switch self {
        case .personal:
            return "Personal Care"
        case .nutrition:
            return "Nutrition"
        case .baby:
            return "Baby Care"
        case .quick:
            return "Quick Relief"
        case .lifestyle:
            return "Lifestyle"
        case .care:
            return "Chronic Care"
        }
    }
    
    @ViewBuilder
    var destination: some View {
        switch self {
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
