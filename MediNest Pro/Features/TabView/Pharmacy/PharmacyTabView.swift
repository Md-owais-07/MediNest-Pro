//
//  PharmacyTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct PharmacyTabView: View {
    @EnvironmentObject private var presentation: PresentationManager
    
    var body: some View {
        NavigationStack {
            
            ZStack(alignment: .top) {
                TopSafeAreaOnly(bgColor: .pharmacy)
                
                VStack(spacing: 0) {
                    PharmacyHeaderView {
                        withAnimation(.spring()) {
                            presentation.showLocationSheet = true
                        }
                    }
                    
                    ScrollView {
                        //
                    }
                }
            }
        }
    }
}

#Preview {
    PharmacyTabView()
}
