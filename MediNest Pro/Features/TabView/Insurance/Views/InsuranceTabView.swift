//
//  InsuranceTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI
 
struct InsuranceTabView: View {
    @EnvironmentObject private var presentation: PresentationManager
    @State private var isExpanded: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .top) {
            TopSafeAreaOnly(bgColor: .insurance)
            
            VStack(spacing: 0) {
                InsuranceHeaderView {
                    withAnimation(.spring()) {
                        presentation.showLocationSheet = true
                    }
                }
                
                ScrollView(showsIndicators: false) {
                    InsuranceTopImage()
                    InsurancePlanSection(data: InsurancePlanData)
                    InsuranceConnectSection(action: {})
                    InsuranceWideRangeSection(data: InsuranceWideRangeCardData)
                    InsuranceTermsSection(action: {
                        isExpanded.toggle()
                    }, isExpanded: $isExpanded)
                    BottomView(prodText: "", iconLeading: "fp", iconCenter: "fh", iconTrailing: "fw", isImage: false)
                    Rectangle()
                        .foregroundStyle(.white)
                        .frame(height: 100)
                }
            }
        }
    }
}

#Preview {
    InsuranceTabView()
        .environmentObject(LocationManager())
}
