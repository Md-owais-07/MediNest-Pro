//
//  CategoriesCardView.swift
//  MediNest Pro
//
//  Created by Owais on 6/29/26.
//

import SwiftUI

struct CategoriesCardView: View {

    let action: () -> Void
    let categories: CategoriesModel

    let cardWidth: CGFloat

    var body: some View {

        Button(action: action) {

            VStack(spacing: 12) {
                
                VStack(spacing: 0) {
                    Image(categories.image)
                        .resizable()
                        .scaledToFill()
//                        .frame(width: cardWidth * 0.9)
                }
                .frame(width: cardWidth, height: cardWidth)
                .background(.orange.opacity(0.15))
                .clipShape(RoundedRectangle(cornerRadius: 12))

                Text(categories.title)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
            }
        }
    }
}

#Preview {
    CategoriesCardView(action: {}, categories: categoriesData[0], cardWidth: 70)
}
