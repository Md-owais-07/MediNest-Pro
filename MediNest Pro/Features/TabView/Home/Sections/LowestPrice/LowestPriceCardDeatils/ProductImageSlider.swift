//
//  ProductImageSlider.swift
//  MediNest Pro
//
//  Created by Owais on 8/15/26.
//

import SwiftUI

struct ProductImageSlider: View {
    let images: [String]
    
    let containerHeight: CGFloat = UIScreen.main.bounds.height * 0.40
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(height: containerHeight)
                    .background(.white)
                    .clipped()
            }
        }
        .tabViewStyle(.page)
        .frame(height: containerHeight)
        .background(.white)
    }
}

#Preview {
    ProductImageSlider(images: ["16", "17"])
}
