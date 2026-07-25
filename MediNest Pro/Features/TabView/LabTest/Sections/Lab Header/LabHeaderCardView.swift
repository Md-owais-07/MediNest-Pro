//
//  LabHeaderCardView.swift
//  MediNest Pro
//
//  Created by Owais on 7/11/26.
//

import SwiftUI

struct LabHeaderCardView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("labBanner")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack(spacing: 16) {
                ForEach(labCardData) { data in
                    ReusbaleLabCards(data: data) {
                        
                    }
                }
            }.padding(.horizontal, 16).padding(.bottom, 14)
        }
        .background(
            LinearGradient(colors: [.lab, .lab.opacity(0.1)], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    LabHeaderCardView()
}
