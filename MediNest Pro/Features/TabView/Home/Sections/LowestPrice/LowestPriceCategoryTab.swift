//
//  LowestPriceCategoryTab.swift
//  MediNest Pro
//
//  Created by Owais on 6/25/26.
//

import SwiftUI

enum LowestPriceCategoryTab: String, CaseIterable, Identifiable {
    case dailyneed
    case sunscreen
    case healthyfood
    case skincare
    case perfume
    case bath
    case haircare
    case deospray
    case personalwellness
    case baby
    case health
    
    var id: String { rawValue }
    
    var title: String {
        switch self {
        case .dailyneed: return "Daily Needs"
        case .sunscreen: return "Sunscreens"
        case .healthyfood: return "Healthy Foods"
        case .skincare: return "Skin care"
        case .perfume: return "Perfumes"
        case .bath: return "Bath & Body"
        case .haircare: return "Hair Care"
        case .deospray: return "Deo Spray"
        case .personalwellness: return "Personal Wellness"
        case .baby: return "Baby Essentials"
        case .health: return "Health Essentials"
        }
    }
    
    var icon: String {
        switch self {
        case .dailyneed: return "holder"
        case .sunscreen: return "holder"
        case .healthyfood: return "holder"
        case .skincare: return "holder"
        case .perfume: return "holder"
        case .bath: return "holder"
        case .haircare: return "holder"
        case .deospray: return "holder"
        case .personalwellness: return "holder"
        case .baby: return "holder"
        case .health: return "holder"
        }
    }
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .dailyneed:
            DailyNeedTabContent()
        case .sunscreen:
            SunscreenTabContent()
        case .healthyfood:
            HealthyTabContent()
        case .skincare:
            SkinTabContent()
        case .perfume:
            PerfumeTabContent()
        case .bath:
            BathTabContent()
        case .haircare:
            HairTabContent()
        case .deospray:
            SprayTabContent()
        case .personalwellness:
            PersonalTabContent()
        case .baby:
            BabyTabContent()
        case .health:
            HealthTabContent()
        }
    }
}
