//
//  HealthFingertipSection.swift
//  MediNest Pro
//
//  Created by Owais on 7/28/26.
//

import SwiftUI

struct HealthFingertipSection: View {
    let data: [HealthFingerTipModel]
    
    var body: some View {
        VStack(spacing: 25) {
            HStack(spacing: 0) {
                Text("Your Health at Your Fingertips")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.black)
                    .lineLimit(1)
                
                Spacer()
                
                Text("View All")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.appGreen)
            }
            
            HStack(spacing: 0) {
                ForEach(data) { data in
                    HelathFingertipCard(title: data.title, image: data.image) {
                        //
                    }
                }
            }
        }
        .padding([.horizontal, .vertical], 16)
    }
}

#Preview {
    HealthFingertipSection(data: HealthFingerTipData)
}
