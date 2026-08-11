//
//  HomeViewModel.swift
//  MediNest Pro
//
//  Created by Owais on 8/3/26.
//

import SwiftUI
internal import Combine

class HomeViewModel: ObservableObject {
    
    func addToCart(_ product: Products, cartManager: CartManager) {
        cartManager.add(product)
        print("HomeViewModel: ADD...")
    }
    
    func increase(_ product: Products, cartManager: CartManager) {
        cartManager.increase(product)
        print("HomeViewModel: INCREASE...")
    }
    
    func decrease(_ product: Products, cartManager: CartManager) {
        cartManager.remove(product)
        print("HomeViewModel: DICREASE...")
    }
}
