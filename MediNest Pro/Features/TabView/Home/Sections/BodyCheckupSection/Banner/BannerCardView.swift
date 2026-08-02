//
//  BannerCardView.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import SwiftUI

struct BannerCardView: View {
    let banner: BannerModel
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Extra 5% OFF*")
                        .font(.system(size: 16, weight: .bold))
                    
                    Text("(Avail onPayment Page) T&C Applied")
                        .font(.system(size: 11, weight: .regular))
                        .foregroundStyle(Color.black.opacity(0.8))
                        .lineLimit(1)
                }
                .padding(.vertical, 10)
                .padding(.leading, 16)
                
                Spacer()
                
                ZStack {
                    Image(banner.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 80, height: 45)
                .background(
                    RoundedRectangle(cornerRadius: 14)
                        .fill(.gray.opacity(0.1))
                )
                .padding(.trailing, 16)
            }
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(.clear)
                    .stroke(.gray, lineWidth: 0.3)
            )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    BannerCardView(banner: banners[0], action: {})
}
