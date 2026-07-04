//
//  OfferCardView.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import SwiftUI

struct OfferCardView: View {
    let action: (() -> Void)
    let offer: OfferModel
    
    var body: some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 5) {
                    Text(offer.title)
                        .font(.system(size: 12, weight: .bold))
                        .foregroundStyle(.black)
                        .multilineTextAlignment(.leading)
                    
                    Text(offer.description)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundStyle(.gray.opacity(0.8))
                        .multilineTextAlignment(.leading)
                }
                .padding([.horizontal, .vertical], 10)
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(offer.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45, height: 45)
                }
            }
            .frame(maxHeight: 150)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(.white)
                    .stroke(.gray.opacity(0.5), lineWidth: 0.5)
            )
        }
    }
}

#Preview {
    OfferCardView(action: {}, offer: offers[0])
}
