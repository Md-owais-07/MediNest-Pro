//
//  ReusbaleLabCards.swift
//  MediNest Pro
//
//  Created by Owais on 7/11/26.
//

import SwiftUI

struct ReusbaleLabCards: View {
    let data: LabCardModel
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack(alignment: .center, spacing: 8) {
                Image(data.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 50)
                
                Text(data.title)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                
                Text(data.offerText)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundStyle(.blue)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 130)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .stroke(.gray.opacity(0.4), lineWidth: 0.5)
            )
        }
    }
}

#Preview {
    ReusbaleLabCards(data: labCardData[0], action: {})
}
