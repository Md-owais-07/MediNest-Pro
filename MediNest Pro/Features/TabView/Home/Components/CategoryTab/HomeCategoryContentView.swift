//
//  HomeCategoryContentView.swift
//  MediNest Pro
//
//  Created by Owais on 7/1/26.
//

import SwiftUI

struct HomeCategoryContentView: View {
    let selectedTab: AppCategoryTab
    
    var body: some View {
        switch selectedTab {
        case.all:
            AllTabContentView()
            
        case.discount:
            DiscountTabContentView()
            
        case.healthplans:
            HealthTabContentView()
            
        case.baby:
            BabyTabContentView()
            
        case.skin:
            SkinTabContentView()
            
        case.women:
            WomenTabContentView()
            
        case.men:
            MenTabContentView()
            
        case.healthcheck:
            CheckupTabContentView()
            
        case.weightloss:
            WeightTabContentView()
            
        case.nutrition:
            NutritionTabContentView()
            
        case.doctor:
            DoctorTabContentView()
        }
    }
}

#Preview {
    HomeCategoryContentView(selectedTab: .all)
}
