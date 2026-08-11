//
//  CartViewSection.swift
//  MediNest Pro
//
//  Created by Owais on 8/2/26.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var navManager: NavigationManager
    
    var body: some View {
        VStack {
            if !cartManager.items.isEmpty {
                ScrollView(.vertical) {
                    VStack(spacing: 0) {
                        ForEach(cartManager.items) { item in
                            CartViewItems(item: item) {
                                //
                            }
                        }
                    }
                }
            } else {
                CartEmptySection {
                    navManager.push(.homeTab(.search))
                }
            }
        }
        .navigationTitle("My Cart")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    CartView()
//}
