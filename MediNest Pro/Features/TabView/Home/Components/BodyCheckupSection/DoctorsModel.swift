//
//  DoctorsModel.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import Foundation

struct DoctorsModel: Identifiable {
    let id: UUID = UUID()
    let gender: String
    let experience: String
}

let doctorsData: [DoctorsModel] = [
    DoctorsModel(gender: "Men", experience: "18-45 Yrs"),
    DoctorsModel(gender: "Women", experience: "18-45 Yrs"),
    DoctorsModel(gender: "Sr. Men", experience: ">45 Yrs"),
    DoctorsModel(gender: "Sr. Women", experience: ">45 Yrs"),
]
