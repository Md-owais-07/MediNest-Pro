//
//  ProfileMenu.swift
//  MediNest Pro
//
//  Created by Owais on 7/30/26.
//

import SwiftUI

enum ProfileMenu: CaseIterable, Identifiable {
    case aboutMenu
    case contactMenu
    case faqsMenu
    case termsMenu
    case returnsMenu
    case privacyMenu
    
    var id: Self { self }
    
    var title: String {
        switch self {
        case .aboutMenu:
            return "About Us"
        case .contactMenu:
            return "Contact Us"
        case .faqsMenu:
            return "FAQs"
        case .termsMenu:
            return "Terms & Conditions"
        case .returnsMenu:
            return "Returns Policy"
        case .privacyMenu:
            return "Privacy Policy"
        }
    }
}
