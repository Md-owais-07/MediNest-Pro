//
//  LowestTabsContent.swift
//  MediNest Pro
//
//  Created by Owais on 7/1/26.
//

import SwiftUI

struct LowestTabsContent: View {
    let selectedTab: LowestPriceCategoryTab
    
    var body: some View {
        switch selectedTab {
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

#Preview {
    LowestTabsContent(selectedTab: .dailyneed)
}
