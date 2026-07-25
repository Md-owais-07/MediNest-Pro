//
//  PharmacyHeaderCardModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/7/26.
//

import SwiftUI
internal import Combine

struct PharmacyHeaderCardModel: Identifiable {
    let id = UUID()
    let title: String
    let subTitle: String
    let image: String
    let buttonTitle: String
    let action: () -> Void
}

let PharmacyHeaderCardData: [PharmacyHeaderCardModel] = [
    PharmacyHeaderCardModel(title: "Upload Prescription\nto Place Order", subTitle: "Up to 18% OFF\n& Free Delivery", image: "pharmacy", buttonTitle: "Order Now", action: {}),
    PharmacyHeaderCardModel(title: "Cut Your Bill by 50%\nWith Trusted\nAlternatives", subTitle: "Up to 18% OFF\n & Free Delivery", image: "pres", buttonTitle: "Learn More", action: {}),
]
