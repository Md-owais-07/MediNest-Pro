//
//  ExploreCardView.swift
//  MediNest Pro
//
//  Created by Owais on 6/30/26.
//

import SwiftUI

struct ExploreCardView: View {
    let card: [ExploreCardModel]
    
    var body: some View {
        HStack(spacing: 18) {
            ForEach(card) { cards in
                ExploreCard(card: cards) {
                    //
                }
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    ExploreCardView(card: exploreCardData)
}
