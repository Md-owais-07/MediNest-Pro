//
//  TrackScrollDirectionModifier.swift
//  MediNest Pro
//
//  Created by Owais on 7/2/26.
//

import SwiftUI

struct TrackScrollDirectionModifier: ViewModifier {

    @EnvironmentObject private var navigation: NavigationManager

    @State private var previousOffset: CGFloat = 0

    private let threshold: CGFloat = 15

    func body(content: Content) -> some View {

        content
            .coordinateSpace(name: "SCROLL")

            .onPreferenceChange(
                ScrollOffsetPreferenceKey.self
            ) { offset in

                let difference = offset - previousOffset

                guard abs(difference) > threshold else { return }

                if difference < 0 {

                    navigation.hideTabBar()

                } else {

                    navigation.showTabBar()
                }

                previousOffset = offset
            }
    }
}

extension View {

    func trackScrollDirection() -> some View {
        modifier(TrackScrollDirectionModifier())
    }
}
