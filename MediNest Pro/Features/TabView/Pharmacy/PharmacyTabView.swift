//
//  PharmacyTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct PharmacyTabView: View {
    var body: some View {
        NavigationStack {
            
            ZStack(alignment: .top) {
                TopSafeAreaOnly(bgColor: .pharmacy)
                
                VStack(spacing: 0) {
                    PharmacyHeaderView()
                    
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
