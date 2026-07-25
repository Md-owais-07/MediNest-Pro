//
//  PharmacyPersonalCareModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/8/26.
//

import SwiftUI

struct PharmacyPersonalCareModel: Identifiable {
    let id = UUID()
    let title: String
    let image: String
}

let PharmacyPersonalCareData: [PharmacyPersonalCareModel] = [
    PharmacyPersonalCareModel(title: "Skin\nCare", image: "9"),
    PharmacyPersonalCareModel(title: "Wellness", image: "10"),
    PharmacyPersonalCareModel(title: "Oral\nCare", image: "11"),
    PharmacyPersonalCareModel(title: "Hair\nCare", image: "12"),
    
    PharmacyPersonalCareModel(title: "Hygiene", image: "13"),
    PharmacyPersonalCareModel(title: "Men's\nGrooming", image: "14"),
    PharmacyPersonalCareModel(title: "Bath\n& Body", image: "15"),
    PharmacyPersonalCareModel(title: "Fragrances", image: "16"),
]
