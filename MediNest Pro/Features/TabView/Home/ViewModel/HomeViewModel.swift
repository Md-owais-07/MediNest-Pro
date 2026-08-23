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
        HapticManager.shared.light()
        print("HomeViewModel: ADD...")
    }
    
    func increase(_ product: Products, cartManager: CartManager) {
        cartManager.increase(product)
        HapticManager.shared.light()
        print("HomeViewModel: INCREASE...")
    }
    
    func decrease(_ product: Products, cartManager: CartManager) {
        cartManager.remove(product)
        HapticManager.shared.light()
        print("HomeViewModel: DICREASE...")
    }
}
