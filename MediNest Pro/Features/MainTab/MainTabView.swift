//
//  MainTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct MainTabView: View {
    
    @EnvironmentObject var appNavigation: NavigationManager
    @EnvironmentObject var presentation: PresentationManager
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            Group {
                switch appNavigation.selectedTab {
                case .home:
                    HomeRootView()
                    
                case .pharmacy:
                    PharmacyTabView()
                    
                case .labTests:
                    LabTestTabView()
                    
                case .doctors:
                    DoctorTabView()
                    
                case .insurance:
                    InsuranceTabView()
                    
                case .myHealth:
                    MyHealthTabView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            CustomTabBar(selectedTab: $appNavigation.selectedTab)
                .offset(y: appNavigation.isTabBarHidden ? 120 : 0)
                .animation(.easeInOut(duration: 0.25),
                           value: appNavigation.isTabBarHidden)
            
            if presentation.showLocationSheet {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation(.spring()) {
                            presentation.showLocationSheet = false
                        }
                    }
                
                VStack {
                    Spacer()
                    
                    LocationView()
                        .transition(.move(edge: .bottom))
                }
                .ignoresSafeArea()
                
            } 
        }
        .ignoresSafeArea(.keyboard)
        .background(Color(.systemGroupedBackground))
    }
}

#Preview {
    MainTabView()
}
