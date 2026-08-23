//
//  CartViewItems.swift
//  MediNest Pro
//
//  Created by Owais on 8/4/26.
//

import SwiftUI

struct CartViewItems: View {
    let item: CartItem
    
    let onDelete: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 12) {
                Image("placeholder")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 15)
                    .frame(width: 25, height: 25)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.gray.opacity(0.4))
                    )
                    
                Text(item.product.deliveryDate)
                    .font(.system(size: 16, weight: .semibold))
                    
            }
            
            Divider()
                .padding(.vertical, 20)
            
            HStack(alignment: .top, spacing: 15) {
                Image(item.product.productImage.first ?? "placeholder")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 60)
                    .clipped()
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(item.product.title)
                        .font(.system(size: 14, weight: .regular))
                    
                    Text(item.product.title)
                        .font(.system(size: 14, weight: .regular))
                    
                    VStack(alignment: .leading, spacing: 0) {
                        HStack(spacing:  0) {
                            Text(item.product.mrp)
                            Text(item.product.discount)
                        }
                        
                        Text(item.product.finalPrice)
                    }
                    
                    Text("\(item.quantity)")
                }
                
                Spacer()
                
                Button(action: onDelete) {
                    Image(systemName: "trash")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundStyle(.appGreen)
                }
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 16)
        
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.gray.opacity(0.3), lineWidth: 0.8)
                }
        )
        .padding(.horizontal, 16)
    }
}

#Preview {
    CartViewItems(
        item: CartItem(
            product: .mock,
            quantity: 1
        ),
        onDelete: {}
    )
}
