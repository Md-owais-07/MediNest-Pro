//
//  OfferView.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import SwiftUI

struct OfferView: View {
    let offers: [OfferModel]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            
            Text("Curated Offerings For You")
                .font(.system(size: 18, weight: .semibold))
            
            HStack(spacing: 16) {
                ForEach(offers) { offer in
                    OfferCardView(action: {
                        //
                    }, offer: offer)
                }
            }
        }.padding(.horizontal, 16).padding(.top, 30)
    }
}

#Preview {
    OfferView(offers: offers)
}
