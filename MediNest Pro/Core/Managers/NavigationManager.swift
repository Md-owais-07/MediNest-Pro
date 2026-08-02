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
    
    func popLabTests() {
        guard !labTestsPath.isEmpty else { return }
        labTestsPath.removeLast()
    }
    
    func resetLabTests() {
        labTestsPath = NavigationPath()
    }
    
    // MARK: - Doctors Navigation
    func pushDoctors(_ route: DoctorsRoute) {
        doctorsPath.append(route)
    }
    
    func popDoctors() {
        guard !doctorsPath.isEmpty else { return }
        doctorsPath.removeLast()
    }
    
    func resetDoctors() {
        doctorsPath = NavigationPath()
    }
    
    // MARK: - Insurance Navigation
    func pushInsurance(_ route: InsuranceRoute) {
        insurancePath.append(route)
    }
    
    func popInsurance() {
        guard !insurancePath.isEmpty else { return }
        insurancePath.removeLast()
    }
    
    func resetInsurance() {
        insurancePath = NavigationPath()
    }
    
    // MARK: - My Health Navigation
    func pushMyHealth(_ route: MyHealthRoute) {
        myHealthPath.append(route)
    }
    
    func popMyHealth() {
        guard !myHealthPath.isEmpty else { return }
        myHealthPath.removeLast()
    }
    
    func resetMyHealth() {
        myHealthPath = NavigationPath()
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
    
    func selectedTab(_ tab: AppTab) {
        if selectedTab == tab {
            switch tab {
            case .home:
                resetHome()
            case .pharmacy:
                resetPharmacy()
            case .labTests:
                resetLabTests()
            case .doctors:
                resetDoctors()
            case .insurance:
                resetInsurance()
            case .myHealth:
                resetMyHealth()
            }
        } else {
            selectedTab = tab
        }
    }
}
