//
//  MediNest_ProApp.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

@main
struct MediNest_ProApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject private var sessionManager = SessionManager()
    @StateObject private var navManager = AppNavigationManager()
    @StateObject private var loader = LoaderManager()
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some Scene {
        WindowGroup {
            AppRootView()
                .environmentObject(sessionManager)
                .environmentObject(navManager)
                .environmentObject(loader)
        }
    }
}
