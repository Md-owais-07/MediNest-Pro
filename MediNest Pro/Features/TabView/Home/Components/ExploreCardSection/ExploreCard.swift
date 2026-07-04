//
//  ExploreCard.swift
//  MediNest Pro
//
//  Created by Owais on 6/30/26.
//

import SwiftUI

struct ExploreCard: View {
    let card: ExploreCardModel
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 0) {
                Image(card.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                
                VStack(alignment: .leading, spacing: 3) {
                    Text(card.title)
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    if let subTitle = card.subTitle, !subTitle.isEmpty {
                        Text(subTitle)
                            .font(.system(size: 11, weight: .medium))
                            .foregroundStyle(.red).opacity(0.8)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
                .padding(.horizontal, 14)
                
                if let episodeTitle = card.episodeTitle, !episodeTitle.isEmpty {
                    Divider()
                        .background(.white)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 14)
                    
                    Text(episodeTitle)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.white)
                        .padding(.horizontal, 14)
                }
                
                Spacer()
                
                HStack(alignment: .center) {
                    Text(card.btnTitle)
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(card.buttonTextColor)
                }
                .frame(maxWidth: card.buttonWidth == nil ? .infinity : nil)
                .frame(width: card.buttonWidth, height: 30)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .fill(card.buttonBackground)
                )
                .padding([.horizontal, .vertical], 12)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 210)
            .background(
                RoundedRectangle(cornerRadius: 14)
                    .fill(card.bgColor)
            )
        }
    }
}

#Preview {
    ExploreCard(card: exploreCardData[0], action: {})
}
