//
//  AppNavigationManager.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI
internal import Combine

@MainActor
final class AppNavigationManager: ObservableObject {
    
    // MARK: - Selected Tab
    @Published var selectedTab: AppTab = .home
    
    // MARK: - Auth Flow Path
    @Published var authPath = NavigationPath()
    
    // MARK: - Tab Paths
    @Published var homePath = NavigationPath()
    @Published var pharmacyPath = NavigationPath()
    @Published var labTestsPath = NavigationPath()
    @Published var doctorsPath = NavigationPath()
    @Published var insurancePath = NavigationPath()
    @Published var myHealthPath = NavigationPath()
    
    @Published var isTabBarHidden = false
    
    // MARK: - Auth Navigation
    func pushAuth(_ route: AuthRoute) {
        authPath.append(route)
    }
    
    func popAuth() {
        guard !authPath.isEmpty else { return }
        authPath.removeLast()
    }
    
    func resetAuth() {
        authPath = NavigationPath()
    }
    
    // MARK: - Home Navigation
    func pushHome(_ route: HomeRoute) {
        homePath.append(route)
    }
    
    func popHome() {
        guard !homePath.isEmpty else { return }
        homePath.removeLast()
    }
    
    func resetHome() {
        homePath = NavigationPath()
    }
    
    // MARK: - Pharmacy Navigation
    func pushPharmacy(_ route: PharmacyRoute) {
        pharmacyPath.append(route)
    }
    
    func popPharmacy() {
        guard !pharmacyPath.isEmpty else { return }
        pharmacyPath.removeLast()
    }
    
    func resetPharmacy() {
        pharmacyPath = NavigationPath()
    }
    
    // MARK: - Lab Tests Navigation
    func pushLabTests(_ route: LabTestsRoute) {
        labTestsPath.append(route)
    }
    
    // MARK: - Doctors Navigation
    func pushDoctors(_ route: DoctorsRoute) {
        doctorsPath.append(route)
    }
    
    // MARK: - Insurance Navigation
    func pushInsurance(_ route: InsuranceRoute) {
        insurancePath.append(route)
    }
    
    // MARK: - My Health Navigation
    func pushMyHealth(_ route: MyHealthRoute) {
        myHealthPath.append(route)
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
