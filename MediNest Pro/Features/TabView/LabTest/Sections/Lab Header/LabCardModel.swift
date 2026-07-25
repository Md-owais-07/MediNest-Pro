//
//  LabCardModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/11/26.
//

import SwiftUI

struct LabCardModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let offerText: String
}

let labCardData: [LabCardModel] = [
    LabCardModel(image: "12", title: "Call\nto Book", offerText: "CALL NOW"),
    LabCardModel(image: "13", title: "Upload\nPrescript'n", offerText: "12% OFF"),
    LabCardModel(image: "14", title: "Vitamin\nTests", offerText: "60% OFF"),
    LabCardModel(image: "15", title: "Fever\nTests", offerText: "50% OFF"),
]
