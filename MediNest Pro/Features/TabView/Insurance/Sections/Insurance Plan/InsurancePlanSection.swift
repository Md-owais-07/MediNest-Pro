//
//  InsurancePlanSection.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct InsurancePlanSection: View {
    let data: [InsurancePlanModel]
    
    let columns = Array(
        repeating: GridItem(.flexible(), spacing: 20),
        count: 2
    )
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text("Plans that fits you")
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.black)
                .multilineTextAlignment(.leading)
                .lineLimit(1)
            
            LazyVGrid(columns: columns, spacing: 30) {
                ForEach(data) { data in
                    InsurancePlanCard(data: data.cardData) {
                        //
                    }
                }
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    InsurancePlanSection(data: InsurancePlanData)
}
