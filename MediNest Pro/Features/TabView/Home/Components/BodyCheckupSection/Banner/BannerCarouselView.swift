//
//  BannerCarouselView.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import SwiftUI
internal import Combine

struct BannerCarouselView: View {
    
    @EnvironmentObject private var navManager: AppNavigationManager
    @State private var currentIndex = 0
    
    private let timer = Timer.publish(
        every: 2,
        on: .main,
        in: .common
    )
        .autoconnect()
    
    let banners: [BannerModel]
    
    var body: some View {
        
        VStack(spacing: -12) {
            TabView(selection: $currentIndex) {
                ForEach(Array(banners.enumerated()), id: \.element.id) { index, banner in   
                    BannerCardView(
                        banner: banner
                    ) {
                        
                        handleBannerTap(banner)
                    }
                    .tag(index)
                    .padding(.horizontal, 16)
                }
            }
            .frame(height: 120)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .onReceive(timer) { _ in
                
                guard !banners.isEmpty else { return }
                
                withAnimation {
                    
                    currentIndex =
                    (currentIndex + 1) % banners.count
                }
            }
            
            BannerIndicatorView(
                count: banners.count,
                currentIndex: currentIndex
            )
        }
    }
    
    // MARK: Navigation
    
    private func handleBannerTap(_ banner: BannerModel) {
        
        switch banner.action {
            
        case .pharmacy:
            navManager.switchTab(.pharmacy)
            
            //        case .doctors:
            //            navManager.switchTab(.doctors)
            
            //        case .insurance:
            //            navManager.switchTab(.insurance)
            //
            //        case .labTests:
            //            navManager.switchTab(.labTests)
            
            //        case .wallet:
            //            navManager.pushHome(.wallet)
        }
    }
}

#Preview {
    BannerCarouselView(banners: banners)
}
