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
    @StateObject private var navManager = NavigationManager()
    @StateObject private var loader = LoaderManager()
    @StateObject private var locationManager = LocationManager()
    @StateObject private var presentSheet = PresentationManager()
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some Scene {
        WindowGroup {
            AppRootView()
                .environmentObject(sessionManager)
                .environmentObject(navManager)
                .environmentObject(loader)
                .environmentObject(locationManager)
                .environmentObject(presentSheet)
        }
    }
}
