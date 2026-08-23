//
//  ReusableLowestpriceCardView.swift
//  MediNest Pro
//
//  Created by Owais on 6/25/26.
//

import SwiftUI

struct ReusableLowestpriceCardView: View {
    
    let product: Products
    
    @EnvironmentObject var cartManager: CartManager
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .center) {
                Image(product.productImage.first ?? "placeholder")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 110)
            }
            .frame(width: 130, height: 150, alignment: .center)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.white)
                    .stroke(.gray.opacity(0.5), lineWidth: 1)
            )
            .overlay(alignment: .bottom) {
                HStack {
                    Spacer()
                    
                    ProductQuantityButton(
                        quantity: cartManager.quantity(product)) {
                            viewModel.addToCart(product, cartManager: cartManager)
                        } onIncrease: {
                            viewModel.increase(product, cartManager: cartManager)
                        } onDiccrease: {
                            viewModel.decrease(product, cartManager: cartManager)
                        }
                    
                }.padding([.bottom, .trailing], -6)
            }
            
            HStack(spacing: 4) {
                Text(product.productQuantity)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundStyle(.black.opacity(0.6))
                    .lineLimit(1)
                    .padding([.horizontal, .vertical], 4)
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .fill(.white.opacity(0.8))
                    )
                
                Text(product.productType)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundStyle(.black.opacity(0.6))
                    .lineLimit(1)
                    .padding([.horizontal, .vertical], 4)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .fill(.white.opacity(0.8))
                    )
            }
            .padding(.top, 12)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 12) {
                Text(product.title)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .textSelection(.enabled)
                
                HStack(spacing: 6) {
                    Image(systemName: "clock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 11, height: 11)
                    
                    Text(product.deliveryDate)
                        .font(.system(size: 11, weight: .bold))
                    
                }
                .foregroundStyle(.brown.opacity(1))
            }
            .padding(.top, 12)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 6) {
                    Text("MRP \(product.mrp)")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.gray)
                        .strikethrough()
                    
                    Text(product.discount)
                        .font(.system(size: 12, weight: .bold))
                        .foregroundStyle(.appGreen)
                }
                
                HStack(spacing: 6) {
                    Text(product.finalPrice)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundStyle(.black)
                        .fixedSize(horizontal: true, vertical: false)
                    
                    Text(product.quantityCount)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.gray)
                        .lineLimit(1)
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 12)
            
        }
        .frame(width: 130, height: 320, alignment: .leading)
    }
}

#Preview {
    ReusableLowestpriceCardView(product: ProductsDataModel[0])
        .environmentObject(CartManager())
}
