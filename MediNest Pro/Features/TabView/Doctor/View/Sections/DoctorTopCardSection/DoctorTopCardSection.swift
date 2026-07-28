//
//  DoctorTopCardSection.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct DoctorTopCardSection: View {
    let items: [DoctorTopCardModel]
    
    var body: some View {
        VStack(spacing: 50) {
            Image("DocHeader")
                .resizable()
                .scaledToFit()
            
            HStack(spacing: 15) {
                ForEach(items) { item in
                    DoctorTopCard(data: item.cardData) {
                        
                    }
                }
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 16)
        }
        .padding(.top, 12)
        .background(
            LinearGradient(colors: [.doctor, .doctor.opacity(0.7)], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    DoctorTopCardSection(items: DoctorTopCardData)
}
