//
//  DoctorsModel.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import Foundation

struct DoctorsModel: Identifiable {
    let id: UUID = UUID()
    let image: String
    let gender: String
    let experience: String
}

let doctorsData: [DoctorsModel] = [
    DoctorsModel(image: "doc-men", gender: "Men", experience: "18-45 Yrs"),
    DoctorsModel(image: "doc-women-2", gender: "Women", experience: "18-45 Yrs"),
    DoctorsModel(image: "doc-men-2", gender: "Sr. Men", experience: ">45 Yrs"),
    DoctorsModel(image: "doc-women", gender: "Sr. Women", experience: ">45 Yrs"),
]
