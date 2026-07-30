//
//  PharmacyRootView.swift
//  MediNest Pro
//
//  Created by Owais on 6/22/26.
//

import SwiftUI

struct PharmacyRootView: View {
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        NavigationStack(path: $navManager.pharmacyPath) {
            PharmacyTabView()
                .navigationDestination(for: PharmacyRoute.self) { route in
                    
                }
        }
    }
    
    @ViewBuilder
    func pharmacyDestination(_ route: PharmacyRoute) -> some View {
        switch route {
        case .oral:
            WalletView()
        }
    }
}

#Preview {
    PharmacyRootView()
}
