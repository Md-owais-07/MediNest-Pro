//
//  PharmacyHeaderCardView.swift
//  MediNest Pro
//
//  Created by Owais on 7/7/26.
//

import SwiftUI

struct PharmacyHeaderCardView: View {
    
    let item: PharmacyHeaderCardModel
    
    var body: some View {
        Button(action: item.action) {
            VStack(alignment: .leading, spacing: 6) {
                
                // Title + subtitle + chevron
                VStack(alignment: .leading, spacing: 5) {
                    Text(item.title)
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundStyle(.black)
                        .multilineTextAlignment(.leading)
                    
                    Text(item.subTitle)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundStyle(.black)
                }
                
                Spacer(minLength: 0)
                
                // Bottom area
                HStack(alignment: .center, spacing: 0) {
                    
                    Text(item.buttonTitle)
                        .font(.system(size: 12, weight: .bold))
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 25)
                        .background(
                            RoundedRectangle(cornerRadius: 6)
                                .fill(.black)
                        )

                    Spacer()
                    
                    Image(item.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: .trailing)
                        .padding(.trailing, 3)
                }
            }
            .padding(.leading, 14)
            .padding(.top, 14)
            .frame(maxWidth: .infinity, minHeight: 170, alignment: .topLeading)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(
                        .white
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 18)
                            .stroke(Color.gray.opacity(0.8), lineWidth: 0.8)
                    )
            )
        }
        .padding(.top, 14)
    }
}

#Preview {
    PharmacyHeaderCardView(item: PharmacyHeaderCardData[0])
}
