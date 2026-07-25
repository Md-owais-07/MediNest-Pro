//
//  PharmacyHeaderGrid.swift
//  MediNest Pro
//
//  Created by Owais on 7/7/26.
//

import SwiftUI

struct PharmacyHeaderGrid: View {
    private let columns = [
        GridItem(.flexible(), spacing: 14),
        GridItem(.flexible(), spacing: 14)
    ]
    
    let items: [PharmacyHeaderCardModel]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 8) {
            ForEach(items) { item in
                PharmacyHeaderCardView(item: item)
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    PharmacyHeaderGrid(items: PharmacyHeaderCardData)
}
