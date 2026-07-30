//
//  HealthFingerTipModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/28/26.
//

import SwiftUI

struct HealthFingerTipModel: Identifiable {
    let id = UUID()
    let title: String
    let image: String
}


let HealthFingerTipData = [
    HealthFingerTipModel(title: "Health\nRecords", image: "placeholder"),
    HealthFingerTipModel(title: "Fetched\nfrom Gmail", image: "placeholder"),
    HealthFingerTipModel(title: "My\nMedicines", image: "placeholder"),
    HealthFingerTipModel(title: "Ask\nMediNest", image: "placeholder"),
]
