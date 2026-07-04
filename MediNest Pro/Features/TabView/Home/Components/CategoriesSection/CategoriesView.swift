//
//  CategoriesView.swift
//  MediNest Pro
//
//  Created by Owais on 6/29/26.
//

import SwiftUI

struct CategoriesView: View {

    let categories: [CategoriesModel]

    private let spacing: CGFloat = 12
    private let horizontalPadding: CGFloat = 16

    var body: some View {

        VStack(spacing: -18) {
            CategoriesHeader()
            
            GeometryReader { geo in

                let totalSpacing = spacing * 3
                let totalPadding = horizontalPadding * 2

                let cardWidth =
                    (geo.size.width - totalSpacing - totalPadding) / 4

                LazyVGrid(
                    columns: Array(
                        repeating: GridItem(.fixed(cardWidth), spacing: spacing),
                        count: 4
                    ),
                    spacing: 16
                ) {

                    ForEach(categories) { category in

                        CategoriesCardView(
                            action: {},
                            categories: category,
                            cardWidth: cardWidth
                        )
                    }
                }
                .padding(.horizontal, horizontalPadding)
            }.frame(height: 645)
        }
        .padding(.top, 28)
    }
}

//struct CategoriesView: View {
//    
//    let categories: [CategoriesModel]
//    
//    private let columns = Array(
//        repeating: GridItem(.flexible(), spacing: 10),
//        count: 4
//    )
//    
//    var body: some View {
//        VStack(spacing: 0) {
//            
//            CategoriesHeader()
//            
//            LazyVGrid(columns: columns, spacing: 15) {
//                ForEach(categories) { category in
//                    CategoriesCardView(action: {
//                        //
//                    }, categories: category)
//                }
//            }.padding(.horizontal, 16)
//        }
//    }
//}

#Preview {
    CategoriesView(categories: categoriesData)
}
