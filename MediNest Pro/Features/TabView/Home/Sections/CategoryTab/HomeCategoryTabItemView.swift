//
//  HomeCategoryTabItemView.swift
//  MediNest Pro
//
//  Created by Owais on 6/24/26.
//

import SwiftUI

struct HomeCategoryTabItemView: View {
    
    let tab: AppCategoryTab
    let isSelected: Bool
    let action: () -> Void
    
    @State private var textWidth: CGFloat = 0
    private let minimumCapsuleWidth: CGFloat = 45
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: tab.icon)
                .font(.system(size: 18))
            
            Text(tab.title)
                .font(.system(size: 14, weight: isSelected ? .semibold : .regular))
                .foregroundStyle(isSelected ? .black : .black.opacity(0.8))
                .lineLimit(1)
                .fixedSize(horizontal: true, vertical: false)
                .readWidth { width in
                    textWidth = width
                }
            
            Capsule()
                .fill(isSelected ? Color.black : Color.clear)
                .frame(width: max(textWidth, minimumCapsuleWidth), height: 4)
        }
        .contentShape(Rectangle())
        .onTapGesture {
            action()
        }
    }
}

#Preview {
    HomeCategoryTabItemView(tab: AppCategoryTab.all, isSelected: true, action: {})
}
