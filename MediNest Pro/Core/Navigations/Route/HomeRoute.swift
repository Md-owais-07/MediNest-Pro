//
//  HomeRoute.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

enum HomeRoute: Hashable {
    case wallet
    case profile
    case cart
    case search
}

@ViewBuilder
func homeTabDestination(_ route: HomeRoute) -> some View {
    switch route {
    case .wallet:
        WalletView()
    case .profile:
        ProfileView()
    case .cart:
        CartView()
    case .search:
        ProductSearchView()
    }
}
