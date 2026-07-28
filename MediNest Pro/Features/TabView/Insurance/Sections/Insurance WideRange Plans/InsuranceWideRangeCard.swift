//
//  InsuranceWideRangeCard.swift
//  MediNest Pro
//
//  Created by Owais on 7/27/26.
//

import SwiftUI

struct InsuranceWideRangeCard: View {
    
    let systemIcon: String
    let title: String
    
    private let circleSize: CGFloat = 60
    private let cornerRadius: CGFloat = 12
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 10) {
                Spacer().frame(height: circleSize / 2 + 4)
                Text(title)
                    .font(.system(size: 12, weight: .bold))
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .padding(.bottom, 12)
            }
            .frame(width: 130)
            .background(
                NotchedCardShape(cornerRadius: cornerRadius, notchRadius: circleSize / 2)
                    .fill(Color.white)
                    .overlay(
                        NotchedCardShape(cornerRadius: cornerRadius, notchRadius: circleSize / 2)
                            .stroke(Color.gray.opacity(0.14), lineWidth: 0.8)
                    )
            )
            .overlay(alignment: .top) {
                ZStack {
                    Circle().fill(.blue.opacity(0.15))
                    Image(systemIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: circleSize * 0.4, height: circleSize * 0.4)
                        .foregroundStyle(.blue)
                }
                .frame(width: circleSize, height: circleSize)
                .offset(y: -circleSize / 2)
            }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    InsuranceWideRangeCard(systemIcon: "banknote",
                           title: "Freeze premium till first claim", action: {})
}
