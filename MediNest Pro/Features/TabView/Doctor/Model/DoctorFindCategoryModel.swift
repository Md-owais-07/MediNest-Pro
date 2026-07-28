//
//  DoctorFindCategoryModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct DoctorFindCategoryModel: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
}

let DoctorFindCategoryData: [DoctorFindCategoryModel] = [
    DoctorFindCategoryModel(title: "General\nPractitioner", icon: "placeholder"),
    DoctorFindCategoryModel(title: "Dermatology", icon: "placeholder"),
    DoctorFindCategoryModel(title: "Psychiatry", icon: "placeholder"),
    DoctorFindCategoryModel(title: "ENT", icon: "placeholder"),
    
    DoctorFindCategoryModel(title: "Women's\nHealth", icon: "placeholder"),
    DoctorFindCategoryModel(title: "Cardiology", icon: "placeholder"),
    DoctorFindCategoryModel(title: "Urology", icon: "placeholder"),
    DoctorFindCategoryModel(title: "Paediatrics", icon: "placeholder"),
    
    DoctorFindCategoryModel(title: "Digestive\nHealth", icon: "placeholder"),
    DoctorFindCategoryModel(title: "Neurology", icon: "placeholder"),
    DoctorFindCategoryModel(title: "Diabetology", icon: "placeholder"),
    DoctorFindCategoryModel(title: "Orthopaedics", icon: "placeholder"),
]

extension DoctorFindCategoryModel {
    var cardData: DoctorTopCardUIModel {
        DoctorTopCardUIModel(
            title: title,
            image: icon
        )
    }
}
