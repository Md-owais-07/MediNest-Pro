//
//  InsuranceTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct InsuranceTabView: View {
    @EnvironmentObject private var presentation: PresentationManager
    
    var body: some View {
        NavigationStack {
            
            ZStack(alignment: .top) {
                TopSafeAreaOnly(bgColor: .insurance)
                
                VStack(spacing: 0) {
                    InsuranceHeaderView {
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
    InsuranceTabView()
}
