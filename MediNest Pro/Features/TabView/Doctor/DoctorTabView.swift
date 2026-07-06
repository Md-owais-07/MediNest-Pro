//
//  DoctorTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct DoctorTabView: View {
    @EnvironmentObject private var presentation: PresentationManager
    
    var body: some View {
        NavigationStack {
            
            ZStack(alignment: .top) {
                TopSafeAreaOnly(bgColor: .doctor)
                
                VStack(spacing: 0) {
                    DoctorHeaderView(locationAction: {
                        withAnimation(.spring()) {
                            presentation.showLocationSheet = true
                        }
                    })
                    
                    ScrollView {
                        //
                    }
                }
            }
            
        }
    }
}

#Preview {
    DoctorTabView()
        .environmentObject(PresentationManager())
}
