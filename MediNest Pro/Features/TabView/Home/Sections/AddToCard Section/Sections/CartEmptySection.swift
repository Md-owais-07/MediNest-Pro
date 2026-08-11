//
//  CartEmptySection.swift
//  MediNest Pro
//
//  Created by Owais on 8/2/26.
//

import SwiftUI

struct CartEmptySection: View {
    let action: () -> Void
    let btnWidth = UIScreen.main.bounds.width * 0.60
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image("empty-cart")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text("Your cart is empty")
                .font(.system(size: 18, weight: .semibold))
            
            Button(action: action) {
                HStack {
                    Text("Add Medicines")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(.white)
                }
                .frame(width: btnWidth, height: 42)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.appGreen)
                )
            }
            .padding(.top, 20)
        }
    }
}

#Preview {
    CartEmptySection(action: {})
}
