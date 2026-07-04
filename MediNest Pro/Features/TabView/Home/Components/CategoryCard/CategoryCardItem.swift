//
//  HomeCategoryCardItem.swift
//  MediNest Pro
//
//  Created by Owais on 6/24/26.
//

import Foundation
import SwiftUI

struct CategoryCardItem: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let badgeTitle: String?
    let offerParts: [StyledTextPart]
    let imageName: String
    let action: CategoryAction
}

let categoryDummuData: [CategoryCardItem] = [
    CategoryCardItem(title: "MediNest", subtitle: "Pharmacy", badgeTitle: nil, offerParts: [
        StyledTextPart("18% off ", color: .green, fontWeight: .semibold),
        StyledTextPart("with NEW18\nand Free Delivery", color: .black, fontWeight: .regular)
    ], imageName: "pharmacy", action: .switchToPharmacy),
    
    CategoryCardItem(title: "Lab Tests", subtitle: "At Home", badgeTitle: nil, offerParts: [
        StyledTextPart("Flat 12% off ", color: .red, fontWeight: .semibold),
        StyledTextPart("and\nFree Home Pickup", color: .black, fontWeight: .regular)
    ], imageName: "test", action: .switchToLabTests),
    
    CategoryCardItem(title: "Doctor", subtitle: "Consultation", badgeTitle: nil, offerParts: [
        StyledTextPart("Consult with\nTop MediNest Doctors", color: .black, fontWeight: .regular)
    ], imageName: "doctor", action: .switchToDoctor),
    
    CategoryCardItem(title: "MediNest", subtitle: "Insurance", badgeTitle: "Free Circle", offerParts: [
        StyledTextPart("1cr. ", color: .primaryButton, fontWeight: .semibold),
        StyledTextPart("Health Cover\nStarting ", color: .black, fontWeight: .regular),
        StyledTextPart("1.5/day*", color: .primaryButton, fontWeight: .semibold),
    ], imageName: "insurance", action: .switchToInsurance),
]

enum CategoryAction {
    case switchToPharmacy
    case switchToLabTests
    case switchToDoctor
    case switchToInsurance
}
