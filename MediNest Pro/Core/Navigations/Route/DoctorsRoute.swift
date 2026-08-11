//
//  DoctorsRoute.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

enum DoctorsRoute: Hashable {
    case doctors
}

@ViewBuilder
func doctorTabDestination(_ route: DoctorsRoute) -> some View {
    switch route {
    case .doctors:
        WalletView()
    }
}
