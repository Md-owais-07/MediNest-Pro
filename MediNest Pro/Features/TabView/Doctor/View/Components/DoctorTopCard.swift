//
//  DoctorTopCard.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct DoctorTopCard: View {
    let data: DoctorTopCardUIModel
    let action: () -> Void
    
    let cardHeight: CGFloat = 140
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 12) {
                Image(data.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                
                Text(data.title)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity)
            .frame(height: cardHeight)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray.opacity(0.6), lineWidth: 0.5)
                    }
            )
        }
    }
}

#Preview {
    DoctorTopCard(data: DoctorTopCardUIModel(title: "Demo", image: "placeholder"), action: {})
}
