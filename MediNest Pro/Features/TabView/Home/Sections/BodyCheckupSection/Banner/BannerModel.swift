//
//  BannerModel.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import Foundation

struct BannerModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let action: BannerAction
}


let banners = [

    BannerModel(
        image: "fh",
        title: "Card Offer",
        action: .pharmacy
    ),

    BannerModel(
        image: "fp",
        title: "Doctor",
        action: .pharmacy
    ),

    BannerModel(
        image: "fw",
        title: "Medicines",
        action: .pharmacy
    )
]

enum BannerAction {
    case pharmacy
//    case doctor
//    case labTests
//    case insurance
//    case creditCard
}


//switch banner.action {
//
//case .doctor:
//    navManager.pushHome(.doctor)
//
//case .pharmacy:
//    navManager.switchTab(.pharmacy)
//
//case .labTests:
//    navManager.switchTab(.labTests)
//
//default:
//    break
//}
