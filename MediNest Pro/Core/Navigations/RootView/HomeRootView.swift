//
//  HomeRootView.swift
//  MediNest Pro
//
//  Created by Owais on 6/22/26.
//

import SwiftUI

struct HomeRootView: View {
    
    @EnvironmentObject private var navManager: AppNavigationManager
    
    var body: some View {
        NavigationStack(path: $navManager.homePath) {
            HomeTabView()
                .navigationDestination(for: HomeRoute.self) { route in
                    homeDestination(route)
                }
        }
    }
    
    @ViewBuilder
    func homeDestination(_ route: HomeRoute) -> some View {
        switch route {
        case .wallet:
            WalletView()
            
        case .profile:
            ProfileView()
        }
    }
}

#Preview {
    HomeRootView()
}
