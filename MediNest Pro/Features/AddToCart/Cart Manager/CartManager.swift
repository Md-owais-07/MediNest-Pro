//
//  CartManager.swift
//  MediNest Pro
//
//  Created by Owais on 8/3/26.
//

import SwiftUI
internal import Combine

final class CartManager: ObservableObject {
    @Published var items: [CartItem] = []
    
    var cartCount: Int {
        items.reduce(0) { $0 + $1.quantity }
    }
    
    func add(_ product: Products) {
        
        print("----------------")
            print(product.title)
            print(product.id)
        
        if let index = items.firstIndex(where: { $0.product.id == product.id }) {
            items[index].quantity += 1
        } else {
            items.append(CartItem(product: product, quantity: 1))
        }
        
        print(items.map { $0.product.title })
    }
    
    func remove(_ product: Products) {
        guard let index = items.firstIndex(where: { $0.product.id == product.id }) else { return }
        
        if items[index].quantity > 1 {
            items[index].quantity -= 1
        } else {
            items.remove(at: index)
        }
    }
    
    func increase(_ product: Products) {
        guard let index = items.firstIndex(where: { $0.product.id == product.id }) else { return }
        
        items[index].quantity += 1
    }
    
    func quantity(_ product: Products) -> Int {
        items.first(where: { $0.product.id == product.id })?.quantity ?? 0
    }
}
