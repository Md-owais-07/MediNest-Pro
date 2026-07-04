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
    
    var body: some View {
        ZStack {
            Group {
                if sessionManager.isLoading {
                    AnimatedSplashView()
                } else if sessionManager.isLoggedIn {
                    MainTabView()
                } else {
                    AuthRootView()
                }
            }
            
            if loader.isLoading {
                AppLoaderView()
                    .zIndex(999)
            }
        }
        .animation(.easeInOut(duration: 0.2), value: loader.isLoading)
    }
}

#Preview {
    AppRootView()
}
