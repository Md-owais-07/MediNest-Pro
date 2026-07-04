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
                        .scaledToFit()
                        .frame(width: cardWidth * 0.55)
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

//struct CategoriesCardView: View {
//    let action: () -> Void
//    let categories: CategoriesModel
//    
//    var body: some View {
//        Button(action: action) {
//            VStack(alignment: .center, spacing: 10) {
//                
//                VStack(spacing: 0) {
//                    Image(categories.image)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 40)
//                }
//                .frame(width: 70, height: 70, alignment: .center)
//                .background(.orange.opacity(0.15))
//                .cornerRadius(12)
//                
//                Text(categories.title)
//                    .font(.system(size: 15, weight: .medium))
//                    .foregroundStyle(.black)
//                    .multilineTextAlignment(.center)
//                    .lineLimit(2)
//                    .fixedSize(horizontal: false, vertical: true)
//            }
//            .frame(maxWidth: .infinity)
//        }
//    }
//}

#Preview {
    CategoriesCardView(action: {}, categories: categoriesData[0], cardWidth: 70)
}
