//
//  LabTestsRoute.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

enum LabTestsRoute: Hashable {
    case lab
}

@ViewBuilder
func labTabDestination(_ route: LabTestsRoute) -> some View {
    switch route {
    case .lab:
        WalletView()
    }
}
