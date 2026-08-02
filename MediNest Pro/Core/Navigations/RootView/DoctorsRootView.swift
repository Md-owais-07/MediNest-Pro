//
//  DoctorsRootView.swift
//  MediNest Pro
//
//  Created by Owais on 6/22/26.
//

import SwiftUI

struct DoctorsRootView: View {
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        NavigationStack(path: $navManager.doctorsPath) {
            DoctorTabView()
                .navigationDestination(for: DoctorsRoute.self) { route in
                    doctorDestination(route)
                }
        }
    }
    
    @ViewBuilder
    func doctorDestination(_ route: DoctorsRoute) -> some View {
        switch route {
        case .doctors:
            WalletView()
        }
    }
}

#Preview {
    DoctorsRootView()
}
