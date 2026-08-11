//
//  MyHealthRoute.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

enum MyHealthRoute: Hashable {
    case aboutMenu
    case contactMenu
    case faqsMenu
    case termsMenu
    case returnsMenu
    case privacyMenu
}

@ViewBuilder
func healthTabDestination(_ route: MyHealthRoute) -> some View {
    switch route {
    case .aboutMenu:
        ProfileAboutUs()
    case .contactMenu:
        ProfileContactUs()
    case .faqsMenu:
        ProfileFaqs()
    case .termsMenu:
        ProfileTermsConditions()
    case .returnsMenu:
        ProfileReturnsPolicy()
    case .privacyMenu:
        ProfilePrivacyPolicy()
    }
}
