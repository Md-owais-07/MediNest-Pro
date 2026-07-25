//
//  PharmacySpecialOfferView.swift
//  MediNest Pro
//
//  Created by Owais on 7/8/26.
//

import SwiftUI

struct PharmacySpecialOfferView: View {
    let items: [PharmacySpecialOfferModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(items) { item in
                    PharmacySpecialOfferCard(item: item)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 35)
        }
    }
}

#Preview {
    PharmacySpecialOfferView(items: PharmacySpecialOfferData)
}
