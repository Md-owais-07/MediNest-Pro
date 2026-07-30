//
//  HelathFingertipCard.swift
//  MediNest Pro
//
//  Created by Owais on 7/28/26.
//

import SwiftUI

struct HelathFingertipCard: View {
    let title: String
    let image: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(alignment: .center, spacing: 8) {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
                
                Text(title)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 90)
        }
    }
}

#Preview {
    HelathFingertipCard(title: "Demo\nTest", image: "placeholder", action: {})
}
