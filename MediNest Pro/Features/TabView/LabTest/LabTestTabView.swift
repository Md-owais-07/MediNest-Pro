//
//  LabTestTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct LabTestTabView: View {
    var body: some View {
        NavigationStack {
            
            ZStack(alignment: .top) {
                TopSafeAreaOnly(bgColor: .lab)
                
                VStack(spacing: 0) {
                    LabHeaderView()
                    
                    ScrollView {
                        //
                    }
                }
            }
        }
    }
}

#Preview {
    LabTestTabView()
}
