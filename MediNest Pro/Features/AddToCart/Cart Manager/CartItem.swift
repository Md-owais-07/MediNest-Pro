//
//  CartItem.swift
//  MediNest Pro
//
//  Created by Owais on 8/3/26.
//

import SwiftUI

struct CartItem: Identifiable {
    let id = UUID()
    let product: Products
    var quantity: Int
}

extension Products {

    static let mock = Products(title: "Demo", deliveryDate: "By Tue 28", mrp: "299", discount: "40", finalPrice: "100", quantityCount: "10", productQuantity: "1", productType: "Food", productImage: "placeholder", rating: "4.5")
}

extension CartItem {

    static let mock = CartItem(
        product: .mock,
        quantity: 2
    )
}
