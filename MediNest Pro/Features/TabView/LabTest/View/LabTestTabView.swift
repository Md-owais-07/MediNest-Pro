//
//  LabTestTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct LabTestTabView: View {
    @EnvironmentObject private var presentation: PresentationManager
    
    @State private var textFiled: String = ""
    
    var body: some View {
        NavigationStack {
            
            ZStack(alignment: .top) {
                TopSafeAreaOnly(bgColor: .lab)
                
                VStack(spacing: 0) {
                    LabHeaderView {
                        withAnimation(.spring()) {
                            presentation.showLocationSheet = true
                        }
                    }
                    
                    ScrollView(showsIndicators: false) {
                        LabHeaderCardView()
                        LabBodyCheckupView()
                        BannerCarouselView(banners: banners)
                        ExpertGuidanceView(
                            action: {},
                            textFieldAction: {},
                            textField: $textFiled
                        )
                        Color.clear.frame(height: 100)
                    }
                }
            }
        }
    }
}

#Preview {
    LabTestTabView()
        .environmentObject(LocationManager())
}
