//
//  ProductCard.swift
//  MediNest Pro
//
//  Created by Owais on 8/3/26.
//

import SwiftUI

struct ProductQuantityButton: View {
    
    let quantity: Int
    let onAdd: () -> Void
    let onIncrease: () -> Void
    let onDiccrease: () -> Void
    
    var body: some View {
        
        if quantity > 0 {
            HStack(spacing: 0) {
                Button(action: onDiccrease) {
                    Image(systemName: "minus")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundStyle(.appGreen)
                        .frame(width: 27, height: 45)
                }
                
                Text("\(quantity)")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(.black)
                    .frame(width: 22)
                
                Button(action: onIncrease) {
                    Image(systemName: "plus")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundStyle(.appGreen)
                        .frame(width: 27, height: 45)
                }
            }
            .frame(width: 80, height: 50)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(.white)
                    .stroke(.appGreen, lineWidth: 1)
            )
        } else {
            Button(action: onAdd) {
                Text("Add")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(.appGreen)
            }
            .frame(width: 60, height: 50).background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(.white)
                    .stroke(.appGreen, lineWidth: 1)
            )
        }
    }
}

#Preview {
    ProductQuantityButton(quantity: 1, onAdd: {}, onIncrease: {}, onDiccrease: {})
}
