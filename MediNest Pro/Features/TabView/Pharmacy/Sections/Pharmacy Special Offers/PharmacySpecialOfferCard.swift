//
//  PharmacySpecialOfferItemView.swift
//  MediNest Pro
//
//  Created by Owais on 7/8/26.
//

import SwiftUI

struct PharmacySpecialOfferCard: View {
    
    let item: PharmacySpecialOfferModel
    
    var body: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 18)
                .fill(
                    item.colors
                )
            
            VStack(spacing: 0) {
                Text(item.badge)
                    .font(.system(size: 12, weight: .semibold))
                    .padding(.horizontal, 10)
                    .padding(.top, 8)
                    .padding(.bottom, 4)
                    .background(.white)
                    .clipShape(Capsule())
                
                Spacer(minLength: 12)
                
                Text(item.title)
                    .font(.system(size: 15, weight: .bold))
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer(minLength: 0)
                
                Image(item.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 125)
                    .padding(.bottom, -45)
                    .clipped()
            }
            .padding(.top, -8)
        }
        .frame(width: 125)
    }
}

#Preview {
    PharmacySpecialOfferCard(item: PharmacySpecialOfferData[0])
}
