//
//  AppNavigationManager.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI
internal import Combine

@MainActor
final class NavigationManager: ObservableObject {
    
    @Published var selectedTab: AppTab = .home
    @Published var isTabBarHidden = false
    
    // MARK: - App Paths
    @Published var path: [AppRoute] = []
    
    
    // MARK: - App Navigation
    func push(_ route: AppRoute) {
        path.append(route)
    }
    
    // MARK: - Pop views
    func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
    
    // MARK: - Pop to root
    func popToRoot() {
        path.removeAll()
    }
    
    // MARK: - Reset Navigation
    func popToRootWithTab(_ tab: AppTab) {
        path.removeAll()
        selectedTab = tab
    }
    
    // MARK: - Tab Switching
    func switchTab(_ tab: AppTab) {
        selectedTab = tab
    }
    
    func hideTabBar() {
        guard !isTabBarHidden else { return }
        
        withAnimation(.easeInOut(duration: 0.25)) {
            isTabBarHidden = true
        }
    }
    
    func showTabBar() {
        guard isTabBarHidden else { return }
        
        withAnimation(.easeInOut(duration: 0.25)) {
            isTabBarHidden = false
        }
    }
}
