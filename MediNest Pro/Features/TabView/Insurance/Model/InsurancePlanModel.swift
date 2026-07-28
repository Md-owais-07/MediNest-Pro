//
//  InsurancePlanModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct InsurancePlanModel: Identifiable {
    let id = UUID()
    let title: String
    let subTitle: String
    let buttonTitle: String
    let image: String
}

let InsurancePlanData: [InsurancePlanModel] = [
    InsurancePlanModel(title: "Freeze Premium", subTitle: "Pay the same rate until\ngrowing family", buttonTitle: "View Plan", image: "placeholder"),
    InsurancePlanModel(title: "Chronic Cover", subTitle: "Hypertension & Diabetes\nCovered from Day 1", buttonTitle: "View Plan", image: "placeholder"),
    InsurancePlanModel(title: "Maternity & IVF", subTitle: "Financial support for your\ngrowing family", buttonTitle: "View Plan", image: "placeholder"),
    InsurancePlanModel(title: "Spouse Inclusion", subTitle: "Add your partner to the\nplan from Day 1", buttonTitle: "View Plan", image: "placeholder"),
]


extension InsurancePlanModel {
    var cardData: InsurancePlanUIModel {
        InsurancePlanUIModel(title: title, subTitle: subTitle, buttonTitle: buttonTitle, image: image)
    }
}
