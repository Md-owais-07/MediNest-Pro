//
//  ScrollOffsetReader.swift
//  MediNest Pro
//
//  Created by Owais on 7/2/26.
//

import SwiftUI

struct ScrollOffsetReader: View {

    var body: some View {
        GeometryReader { geo in

            Color.clear
                .preference(
                    key: ScrollOffsetPreferenceKey.self,
                    value: geo.frame(in: .named("SCROLL")).minY
                )
        }
        .frame(height: 0)
    }
}
