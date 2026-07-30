//
//  InsuranceRootView.swift
//  MediNest Pro
//
//  Created by Owais on 6/22/26.
//

import SwiftUI

struct InsuranceRootView: View {
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        NavigationStack(path: $navManager.insurancePath) {
            InsuranceTabView()
                .navigationDestination(for: InsuranceRoute.self) { route in
                    
                }
        }
    }
    
    @ViewBuilder
    func pharmacyDestination(_ route: InsuranceRoute) -> some View {
        switch route {
        case .provider:
            WalletView()
        }
    }
}

#Preview {
    InsuranceRootView()
}
