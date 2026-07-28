//
//  DoctorTopCardModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct DoctorTopCardModel: Identifiable {
    let id = UUID()
    let title: String
    let image: String
}

let DoctorTopCardData: [DoctorTopCardModel] = [
    DoctorTopCardModel(title: "Online\nConsult", image: "placeholder"),
    DoctorTopCardModel(title: "Hospital\nVisit", image: "placeholder"),
    DoctorTopCardModel(title: "Surgical\nCare", image: "placeholder"),
]

extension DoctorTopCardModel {
    var cardData: DoctorTopCardUIModel {
        DoctorTopCardUIModel(
            title: title,
            image: image
        )
    }
}
