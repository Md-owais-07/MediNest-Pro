//
//  InsuranceRoute.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

enum InsuranceRoute: Hashable {
    case provider
}

@ViewBuilder
func insuranceTabDestination(_ route: InsuranceRoute) -> some View {
    switch route {
    case .provider:
        WalletView()
    }
}
