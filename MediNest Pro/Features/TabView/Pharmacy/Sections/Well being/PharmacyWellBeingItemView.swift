//
//  PharmacyWellBeingItemView.swift
//  MediNest Pro
//
//  Created by Owais on 7/7/26.
//

import SwiftUI

struct PharmacyWellBeingItemView: View {
    
    let tab: PharmacyWellBeingTab
    let isSelected: Bool
    let action: () -> Void
    
    @State private var textWidth: CGFloat = 0
    
    private let minimumCapsuleWidth: CGFloat = 45
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack(spacing: 8) {
                Text(tab.title)
                    .font(.system(size: 14, weight: isSelected ? .bold : .medium))
                    .foregroundStyle(.black)
                    .lineLimit(1)
                    .fixedSize(horizontal: true, vertical: false)
                    .readWidth { width in
                        textWidth = width
                    }
                
                Capsule()
                    .fill(isSelected ? Color.black : Color.clear)
                    .frame(width: max(textWidth, minimumCapsuleWidth), height: 4)
            }
        }
    }
}

#Preview {
    PharmacyWellBeingItemView(tab: .personal, isSelected: true, action: {})
}
