//
//  AppCategoryTab.swift
//  MediNest Pro
//
//  Created by Owais on 6/24/26.
//

import SwiftUI

enum AppCategoryTab: String, CaseIterable, Identifiable {
    case all
    case discount
    case healthplans
    case baby
    case skin
    case women
    case men
    case healthcheck
    case weightloss
    case nutrition
    case doctor
    
    var id: String { rawValue }
    
    var title: String {
        switch self {
        case .all: return "All"
        case .discount: return "50% OFF"
        case .healthplans: return "Health Plans"
        case .baby: return "Baby"
        case .skin: return "Skin"
        case .women: return "Women"
        case .men: return "Men"
        case .healthcheck: return "Health Check"
        case .weightloss: return "Weight Loss"
        case .nutrition: return "Nutrition"
        case .doctor: return "Instant Dr."
        }
    }
    
    var icon: String {
        switch self {
        case .all: return "bag.badge.plus"
        case .discount: return "percent"
        case .healthplans: return "shield"
        case .baby: return "figure.and.child.holdinghands"
        case .skin: return "face.smiling"
        case .women: return "person.crop.circle"
        case .men: return "person"
        case .healthcheck: return "cross.case"
        case .weightloss: return "scalemass"
        case .nutrition: return "leaf"
        case .doctor: return "stethoscope"
        }
    }
    
    var selectedIcon: String {
        switch self {
        case .all: return "bag.badge.plus.fill"
        case .discount: return "percent"
        case .healthplans: return "shield.fill"
        case .baby: return "figure.and.child.holdinghands"
        case .skin: return "face.smiling.fill"
        case .women: return "person.crop.circle.fill"
        case .men: return "person.fill"
        case .healthcheck: return "cross.case.fill"
        case .weightloss: return "scalemass"
        case .nutrition: return "leaf.fill"
        case .doctor: return "stethoscope"
        }
    }
    
    
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .all:
            AllTabContentView()
        case .discount:
            DiscountTabContentView()
        case .healthplans:
            HealthTabContentView()
        case .baby:
            BabyTabContentView()
        case .skin:
            SkinTabContentView()
        case .women:
            WomenTabContentView()
        case .men:
            MenTabContentView()
        case .healthcheck:
            CheckupTabContentView()
        case .weightloss:
            WeightTabContentView()
        case .nutrition:
            NutritionTabContentView()
        case .doctor:
            DoctorTabContentView()
        }
    }
}
