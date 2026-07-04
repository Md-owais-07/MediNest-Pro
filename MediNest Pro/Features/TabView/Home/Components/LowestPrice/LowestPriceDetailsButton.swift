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
        Button {
            action()
        } label: {
            VStack(spacing: 0) {
                ZStack {
                    HStack(spacing: 16) {
                        Text("View All Offers")
                            .font(.system(size: 16, weight: .bold))
                        
                        Image(systemName: "chevron.forward.2")
                            .resizable()
                            .frame(width: 15, height: 13)
                            .fontWeight(.bold)
                    }
                    .foregroundStyle(.appGreen)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.clear)
                    
                        .stroke(.appGreen, lineWidth: 1.3)
                )
                
                Spacer()
                    .frame(height: 20)
            }
            .padding(.horizontal, 18)
        }
    }
}

#Preview {
    LowestPriceDetailsButton(action: {})
}
