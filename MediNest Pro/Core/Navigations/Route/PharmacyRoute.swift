//
//  PharmacyRoute.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

enum PharmacyRoute: Hashable {
    case cart
}

@ViewBuilder
func pharmacyTabDestination(_ route: PharmacyRoute) -> some View {
    switch route {
    case .cart:
        CartView()
    }
}
