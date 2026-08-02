//
//  LabTestsRootView.swift
//  MediNest Pro
//
//  Created by Owais on 6/22/26.
//

import SwiftUI

struct LabTestsRootView: View {
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        NavigationStack(path: $navManager.labTestsPath) {
            LabTestTabView()
                .navigationDestination(for: LabTestsRoute.self) { route in
                    
                }
        }
    }
    
    @ViewBuilder
    func pharmacyDestination(_ route: LabTestsRoute) -> some View {
        switch route {
        case .lab:
            WalletView()
        }
    }
}

#Preview {
    LabTestsRootView()
}
