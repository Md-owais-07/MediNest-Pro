//
//  LowestPriceCardView.swift
//  MediNest Pro
//
//  Created by Owais on 6/27/26.
//

import SwiftUI

struct LowestPriceCardView: View {
    let product: [Products]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 28) {
                ForEach(product) { product in
                    NavigationLink {
                        LowestPriceCardDetailsView(product: product)
                    } label: {
                        ReusableLowestpriceCardView(product: product)
                    }
                }
            }.padding(.horizontal, 20)
        }
    }
}

#Preview {
    LowestPriceCardView(product: ProductsDataModel)
        .environmentObject(CartManager())
}
