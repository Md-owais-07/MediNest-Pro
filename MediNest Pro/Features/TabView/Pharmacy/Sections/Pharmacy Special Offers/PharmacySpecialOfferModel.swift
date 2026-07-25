//
//  PharmacySpecialOfferModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/8/26.
//

import SwiftUI

struct PharmacySpecialOfferModel: Identifiable {
    let id = UUID()
    let badge: String
    let title: String
    let image: String
    let colors: AnyShapeStyle
}

let PharmacySpecialOfferData: [PharmacySpecialOfferModel] = [
    
    PharmacySpecialOfferModel(badge: "Special Offers", title: "Skin\nCare", image: "9", colors: AnyShapeStyle(LinearGradient(colors: [.blue.opacity(0.2), .blue], startPoint: .top, endPoint: .bottom))),
    
    PharmacySpecialOfferModel(badge: "Lowest Price", title: "Nutritions\nDrink", image: "10",  colors: AnyShapeStyle(LinearGradient(colors: [.orange.opacity(0.2), .orange], startPoint: .top, endPoint: .bottom))),
    
    PharmacySpecialOfferModel(badge: "New Launch", title: "Healthy\nSnaks", image: "9",  colors: AnyShapeStyle(LinearGradient(colors: [.pink.opacity(0.2), .pink], startPoint: .top, endPoint: .bottom))),
    
    PharmacySpecialOfferModel(badge: "Prevent illness", title: "Helath\nTop Picks", image: "10",  colors: AnyShapeStyle(LinearGradient(colors: [.insuranceDark.opacity(0.2), .insuranceDark], startPoint: .top, endPoint: .bottom))),
    
    PharmacySpecialOfferModel(badge: "Special Offers", title: "Mamaearth", image: "9",  colors: AnyShapeStyle(LinearGradient(colors: [.appGreen.opacity(0.2), .appGreen], startPoint: .top, endPoint: .bottom))),
    
    PharmacySpecialOfferModel(badge: "Trusted Brands", title: "Min\n50% Off", image: "10",  colors: AnyShapeStyle(LinearGradient(colors: [.gray.opacity(0.2), .gray], startPoint: .top, endPoint: .bottom))),
    
]
