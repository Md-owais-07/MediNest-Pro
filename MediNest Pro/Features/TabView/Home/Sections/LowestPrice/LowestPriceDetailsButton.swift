//
//  LowestPriceDetailsButton.swift
//  MediNest Pro
//
//  Created by Owais on 6/27/26.
//

import SwiftUI

struct LowestPriceDetailsButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action : action) {
            HStack(spacing: 16) {
                Text("View All Offers")
                    .font(.system(size: 16, weight: .bold))
                
                Image(systemName: "chevron.forward.2")
                    .font(.system(size: 14, weight: .bold))
            }
            .foregroundStyle(.appGreen)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.appGreen, lineWidth: 1.3)
            )
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 18)
    }
}

#Preview {
    LowestPriceDetailsButton(action: {})
}
