//
//  ContentView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI


struct AppRootView: View {
    
    @EnvironmentObject private var sessionManager: SessionManager
    @EnvironmentObject private var loader: LoaderManager
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        NavigationStack(path: $navManager.path) {
            ZStack {
                Color.white
                       .ignoresSafeArea()
                Group {
                    if sessionManager.isLoading {
                        AnimatedSplashView()
                    } else if sessionManager.isLoggedIn {
                        MainTabView()
                    } else {
                        LoginView()
                    }
                }
                .navigationDestination(for: AppRoute.self) { route in
                    routeDestination(route)
                }
                
                if loader.isLoading {
                    AppLoaderView()
                        .zIndex(999)
                }
            }
            .animation(.easeInOut(duration: 0.2), value: loader.isLoading)
        }
    }
    
    @ViewBuilder
    func routeDestination(_ route: AppRoute) -> some View {
        switch route {
        case .auth(let authRoute):
            authDestination(authRoute)
        case .homeTab(let homeRoute):
            homeTabDestination(homeRoute)
        case .pharmacyTab(let pharmacyRoute):
            pharmacyTabDestination(pharmacyRoute)
        case .labTab(let labTestsRoute):
            labTabDestination(labTestsRoute)
        case .doctorTab(let doctorsRoute):
            doctorTabDestination(doctorsRoute)
        case .insurancetab(let insuranceRoute):
            insuranceTabDestination(insuranceRoute)
        case .healthTab(let myHealthRoute):
            healthTabDestination(myHealthRoute)
        }
    }
}
