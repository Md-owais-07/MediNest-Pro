//
//  AddToCartButton.swift
//  MediNest Pro
//
//  Created by Owais on 8/17/26.
//

import SwiftUI

struct AddToCartButton: View {
    let quantityAction: () -> Void
    let onAdd: () -> Void
    
    let quantity: Int
    
    var body: some View {
        if quantity > 0 {
            HStack(spacing: 14) {
                Button(action: quantityAction) {
                    HStack {
                        Text("1 Tube")
                            .font(.system(size: 14, weight: .semibold))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.down")
                            .font(.system(size: 16, weight: .medium))
                            
                    }
                    .padding(.horizontal, 16)
                    .foregroundStyle(.black)
                    .frame(width: 130)
                    .frame(height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.gray.opacity(0.8), lineWidth: 0.7)
                            }
                    )
                }.buttonStyle(.plain)
                Button(action: quantityAction) {
                    HStack(alignment: .center) {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("424.5")
                                .font(.system(size: 14, weight: .bold))
                            
                            Text("1 Items")
                                .font(.system(size: 11, weight: .medium))
                        }
                        
                        Spacer()
                        
                        Text("View Cart")
                            .font(.system(size: 16, weight: .bold))
                    }
                    .foregroundStyle(.white)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.appGreen)
                    .cornerRadius(10)
                }.buttonStyle(.plain)
            }
        } else {
            CustomButton(action: {
                onAdd()
            }, title: "Add To Cart", isLoading: false, bgColor: .appGreen)
        }
    }
}

#Preview {
    AddToCartButton(quantityAction: {}, onAdd: {}, quantity: 1)
}
