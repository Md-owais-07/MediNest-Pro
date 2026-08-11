//
//  LowestPriceCardView.swift
//  MediNest Pro
//
//  Created by Owais on 6/27/26.
//

import SwiftUI

struct LowestPriceCardView: View {
    let product: [Products]
    let action: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 28) {
                    ForEach(product) { product in
                        ReusableLowestpriceCardView(product: product) {
                            action()
                        }
                    }
                }.padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    LowestPriceCardView(product: ProductsDataModel, action: {})
}
