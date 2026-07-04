//
//  LowestPriceCardView.swift
//  MediNest Pro
//
//  Created by Owais on 6/27/26.
//

import SwiftUI

struct LowestPriceCardView: View {
    let lowestData: [LowestPriceModel]
    
    var body: some View {
        VStack(spacing: 50) {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 28) {
                    ForEach(lowestData) { item in
                        ReusableLowestpriceCardView(action: {}, data: item)
                    }
                }.padding(.horizontal, 20)
            }
            
            LowestPriceDetailsButton(action: {})
        }
    }
}

#Preview {
    LowestPriceCardView(lowestData: [LowestPriceModel(title: "test", deliveryDate: "t", mrp: "t", discount: "t", finalPrice: "t", quantityCount: "t", productQuantity: "t", productType: "t", productImage: "t", rating: "t")])
}
