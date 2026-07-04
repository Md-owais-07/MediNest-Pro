//
//  BannerIndicatorView.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import SwiftUI

struct BannerIndicatorView: View {
    let count: Int
    let currentIndex: Int

    var body: some View {
        HStack(spacing: 8) {

            ForEach(0..<count, id: \.self) { index in
                Capsule()
                    .fill(
                        currentIndex == index
                        ? Color.blue
                        : Color.gray.opacity(0.3)
                    )
                    .frame(
                        width: currentIndex == index ? 24 : 8,
                        height: 8
                    )
            }
        }
        .animation(.easeInOut(duration: 0.25), value: currentIndex)
    }
}

#Preview {
    BannerIndicatorView(count: 1, currentIndex: 1)
}
