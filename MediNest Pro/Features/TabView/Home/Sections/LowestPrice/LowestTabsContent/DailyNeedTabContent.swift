//
//  DailyNeedTabContent.swift
//  MediNest Pro
//
//  Created by Owais on 7/1/26.
//

import SwiftUI

struct DailyNeedTabContent: View {
    
    var body: some View {
        VStack(spacing: 0) {
            LowestPriceCardView(product: ProductsDataModel) {
                
            }
        }
    }
}

#Preview {
    DailyNeedTabContent()
        .environmentObject(CartManager())
}
