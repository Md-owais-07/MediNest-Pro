//
//  ReusableLowestpriceCardView.swift
//  MediNest Pro
//
//  Created by Owais on 6/25/26.
//

import SwiftUI

struct ReusableLowestpriceCardView: View {
    
    let action: (() -> Void)
    let data: LowestPriceModel
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                ZStack(alignment: .center) {
                    Image(data.productImage)
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
                        
                        Button {
                            action()
                        } label: {
                            Text("Add")
                                .font(.system(size: 15, weight: .semibold))
                                .foregroundStyle(.appGreen)
                        }
                        .frame(width: 60, height: 50).background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(.white)
                                .stroke(.appGreen, lineWidth: 1)
                        )
                        
                    }.padding([.bottom, .trailing], -6)
                }
                
                HStack(spacing: 4) {
                    Text(data.productQuantity)
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(.black.opacity(0.6))
                        .lineLimit(1)
                        .padding([.horizontal, .vertical], 4)
                        .background(
                            RoundedRectangle(cornerRadius: 6)
                                .fill(.white.opacity(0.8))
                        )
                    
                    Text(data.productType)
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
                    Text(data.title)
                        .font(.system(size: 14, weight: .semibold))
                        .multilineTextAlignment(.leading)
                        .textSelection(.enabled)
                    
                    HStack(spacing: 6) {
                        Image(systemName: "clock")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 11, height: 11)
                        
                        Text(data.deliveryDate)
                            .font(.system(size: 11, weight: .bold))
                            
                    }
                    .foregroundStyle(.brown.opacity(1))
                }
                .padding(.top, 12)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack(spacing: 6) {
                        Text("MRP \(data.mrp)")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.gray)
                            .strikethrough()
                        
                        Text(data.discount)
                            .font(.system(size: 12, weight: .bold))
                            .foregroundStyle(.appGreen)
                    }
                    
                    HStack(spacing: 6) {
                        Text(data.finalPrice)
                            .font(.system(size: 16, weight: .bold))
                            .foregroundStyle(.black)
                            .fixedSize(horizontal: true, vertical: false)
                        
                        Text(data.quantityCount)
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.gray)
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 12)
                
                Spacer()
                
            }
        }
        .frame(width: 130, height: 320, alignment: .leading)
        .background(.clear)
    }
}

#Preview {
    ReusableLowestpriceCardView(action: {}, data: LowestPriceModel(title: "test", deliveryDate: "t", mrp: "t", discount: "t", finalPrice: "t", quantityCount: "t", productQuantity: "t", productType: "t", productImage: "t", rating: "t"))
}
