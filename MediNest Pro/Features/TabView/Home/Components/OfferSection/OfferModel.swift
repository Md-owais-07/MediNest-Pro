//
//  OfferModel.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import Foundation

struct OfferModel: Identifiable {
    let id = UUID()
    let title: String
    let description:  String
    let image: String
}

let offers: [OfferModel] = [
    OfferModel(title: "Apollo SBI Card SELECT", description: "India's Health First Credit Card", image: "pres"),
    OfferModel(title: "Apollo SBI Card SELECT", description: "India's Health First Credit Card", image: "pres"),
    OfferModel(title: "Apollo SBI Card SELECT", description: "India's Health First Credit Card", image: "pres")
]
