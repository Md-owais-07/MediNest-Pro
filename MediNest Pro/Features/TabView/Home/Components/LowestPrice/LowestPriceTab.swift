//
//  LowestPriceTab.swift
//  MediNest Pro
//
//  Created by Owais on 6/25/26.
//

import SwiftUI

struct LowestPriceTab: View {
    
    let tab: LowestPriceCategoryTab
    let isSelected: Bool
    let action: () -> Void
    
    @State private var textWidth: CGFloat = 0
    private let minimumCapsuleWidth: CGFloat = 45
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack(spacing: 8) {
                ZStack(alignment: .bottom) {
                    Circle()
                        .fill(.white)
                        .frame(width: 60, height: 60)
                    
                    Image(tab.icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 50)
                        .padding(.bottom, -8)
                }
                .clipShape(Circle())
                
                Text(tab.title)
                    .font(.system(size: 14, weight: isSelected ? .bold : .regular))
                    .foregroundStyle(isSelected ? .appGreen : .black.opacity(0.8))
                    .lineLimit(1)
                    .fixedSize(horizontal: true, vertical: false)
                    .readWidth { width in
                        textWidth = width
                    }
                
                Capsule()
                    .fill(isSelected ? Color.appGreen : Color.clear)
                    .frame(width: max(textWidth, minimumCapsuleWidth), height: 4)
                
            }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    LowestPriceTab(tab: LowestPriceCategoryTab.baby, isSelected: true, action: {})
}
