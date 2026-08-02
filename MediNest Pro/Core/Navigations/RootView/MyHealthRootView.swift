//
//  MyHealthRootView.swift
//  MediNest Pro
//
//  Created by Owais on 6/22/26.
//

import SwiftUI

struct MyHealthRootView: View {
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        NavigationStack(path: $navManager.myHealthPath) {
            MyHealthTabView()
                .navigationDestination(for: MyHealthRoute.self) { route in
                    myHealthDestination(route)
                }
        }
    }
    
    @ViewBuilder
    func myHealthDestination(_ route: MyHealthRoute) -> some View {
        switch route {
            
        case .aboutMenu:
            ProfileAboutUs()
            
        case .contactMenu:
            ProfileContactUs()
            
        case .faqsMenu:
            ProfileFaqs()
            
        case .termsMenu:
            ProfileTermsConditions()
        
        case .returnsMenu:
            ProfileReturnsPolicy()
            
        case .privacyMenu:
            ProfilePrivacyPolicy()
        }
    }
}

#Preview {
    MyHealthRootView()
}
