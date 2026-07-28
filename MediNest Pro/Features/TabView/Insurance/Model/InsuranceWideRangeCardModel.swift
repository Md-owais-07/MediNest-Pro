//
//  InsuranceWideRangeCardModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/27/26.
//

import SwiftUI

struct InsuranceWideRangeCardModel: Identifiable {
    let id = UUID()
    let title: String
    let image: String
}

let InsuranceWideRangeCardData = [
    InsuranceWideRangeCardModel(title: "Freeze premium\ntill first claim", image: "placeholder"),
    InsuranceWideRangeCardModel(title: "Hypertension &\ndiabetes from Day 1", image: "placeholder"),
    InsuranceWideRangeCardModel(title: "Spouse inclusion\nfrom day 1", image: "placeholder"),
    InsuranceWideRangeCardModel(title: "Modern day\nrobotics surgeries", image: "placeholder"),
]

