//
//  LowestPriceCardDetailsView.swift
//  MediNest Pro
//
//  Created by Owais on 8/13/26.
//

import SwiftUI

struct LowestPriceCardDetailsView: View {
    let product: Products
    
    @StateObject var viewModel = HomeViewModel()
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 0) {
                    ProductImageSlider(images: product.productImage)
                    
                    HStack(spacing: 0) {
                        Text(product.deliveryDate)
                            .font(.system(size: 11, weight: .medium))
                        
                        Spacer()
                        
                        Text("Write a review")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundStyle(.appGreen)
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 6)
                    
                    Text("\(product.title) \(product.productType), \(product.quantityCount)")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundStyle(.black)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 16)
                    
                    VStack(alignment: .leading, spacing: 9) {
                        Text(product.quantityCount)
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.appGreen)
                        
                        VStack(spacing: 4) {
                            Text(product.finalPrice)
                                .font(.system(size: 15, weight: .semibold))
                                .foregroundStyle(.black)
                            
                            Text(product.productQuantity)
                                .font(.system(size: 12, weight: .thin))
                                .foregroundStyle(.black)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.25 + 15, height: 85)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.appGreen.opacity(0.12))
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.appGreen, lineWidth: 0.8)
                            }
                    )
                    .padding(.horizontal, 16)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        HStack(spacing: 12) {
                            Text(product.finalPrice)
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundStyle(.black)
                            
                            Text("MRP \(product.mrp)")
                                .font(.system(size: 14, weight: .regular))
                                .foregroundStyle(.gray)
                                .strikethrough()
                            
                            Text(product.discount)
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.appGreen)
                        }
                        
                        HStack(spacing: 8) {
                            Text(product.quantityCount)
                            
                            CustomRectangle()
                            
                            Text("₹5.50/ml")
                            
                            CustomRectangle()
                            
                            Text("(Including Taxes)")
                        }
                        .font(.system(size: 13, weight: .regular))
                        .foregroundStyle(.gray)
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 25)
                    
                    CustomDivider()
                        .padding(.top, 10)
                    
                    Rectangle()
                        .fill(.white)
                        .frame(height: 200)
                    
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            // Search
                        } label: {
                            Image(systemName: "magnifyingglass")
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            // Cart
                        } label: {
                            Image(systemName: "cart")
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            // Share
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                        }
                    }
                }
            }
            
            // Bottom Overlay View
            VStack(spacing: 0) {
                Text("28 people bought in last 30 days")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(.appGreen)
                    .frame(maxWidth: .infinity)
                    .frame(height: 35)
                    .background(.appGreen.opacity(0.2))
                    .clipShape(CustomRoundedCorner(radius: 20, corners: [.topLeft, .topRight]))
                
                Spacer()
                
                AddToCartButton(
                    quantityAction: {
                        //
                    }, onAdd: {
                        viewModel.addToCart(product, cartManager: cartManager)
                    }, quantity: cartManager.quantity(product)
                )
                .padding(.horizontal, 16)
                .padding(.bottom, 10)
            }
            .frame(height: 110)
            .clipShape(CustomRoundedCorner(radius: 16, corners: [.topLeft, .topRight]))
        }
    }
}

#Preview {
    LowestPriceCardDetailsView(product: ProductsDataModel[0])
}
