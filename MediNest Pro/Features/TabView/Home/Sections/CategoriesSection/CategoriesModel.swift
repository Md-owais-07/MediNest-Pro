//
//  CategoriesModel.swift
//  MediNest Pro
//
//  Created by Owais on 6/29/26.
//

import SwiftUI

struct CategoriesModel: Identifiable {
    let id = UUID()
    let title: String
    let image: String
}

let categoriesData: [CategoriesModel] = [
    CategoriesModel(title: "Skin Care", image: "19"),
    CategoriesModel(title: "Wellness", image: "15"),
    CategoriesModel(title: "Oral Care", image: "10"),
    CategoriesModel(title: "Hair Care", image: "20"),
    
    CategoriesModel(title: "Personal Hygiene", image: "13"),
    CategoriesModel(title: "Diaper & Wipes", image: "14"),
    CategoriesModel(title: "Feeding Essentials", image: "17"),
    CategoriesModel(title: "Baby Skin & Bath", image: "15"),
    
    CategoriesModel(title: "Fitness Essentials", image: "9"),
    CategoriesModel(title: "Vitamins & Minerals", image: "10"),
    CategoriesModel(title: "Nutritional Drinks", image: "11"),
    CategoriesModel(title: "Ayurveda Essentials", image: "12"),
    
    CategoriesModel(title: "Health Devices", image: "13"),
    CategoriesModel(title: "Home Essentials", image: "14"),
    CategoriesModel(title: "Pain\nRelief", image: "15"),
    CategoriesModel(title: "Fever & Cold", image: "16"),
    
    CategoriesModel(title: "Apollo Products", image: "17"),
    CategoriesModel(title: "Digestive Care", image: "18"),
    CategoriesModel(title: "Diabetes Care", image: "19"),
    CategoriesModel(title: "Cardiac Care", image: "20"),
]
