//
//  CategoryCardView.swift
//  MediNest Pro
//
//  Created by Owais on 6/24/26.
//

import SwiftUI

struct CategoryCardView: View {
    
    let item: CategoryCardItem
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 6) {
                
                // Title + subtitle + chevron
                VStack(alignment: .leading, spacing: 2) {
                    Text(item.title)
                        .font(.system(size: 15, weight: .bold))
                        .foregroundStyle(.black)
                    
                    HStack(spacing: 6) {
                            Text(item.subtitle)
                                .font(.system(size: 15, weight: .bold))
                                .foregroundStyle(.black)
                        
                        Image(systemName: "chevron.right")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundStyle(.black.opacity(0.6))
                    }
                }
                
                // Offer / description
                StyledTextView(parts: item.offerParts, font: .system(size: 12))
                
                Spacer(minLength: 0)
                
                // Bottom area
                HStack(alignment: .center, spacing: 0) {

                    Spacer()
                    
                    Image(item.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 60, alignment: .trailing)
                        .padding(.trailing, 3)
                }
            }
            .padding(.leading, 14)
            .padding(.top, 14)
            .frame(maxWidth: .infinity, minHeight: 170, alignment: .topLeading)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(
                        LinearGradient(colors: [.white, .gray.opacity(0.08)], startPoint: .topTrailing, endPoint: .bottomLeading)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 18)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 0.5)
                    )
            )
        }
        .padding(.top, 14)
    }
}

#Preview {
    CategoryCardView(item: categoryDummuData[0], action: {})
}
