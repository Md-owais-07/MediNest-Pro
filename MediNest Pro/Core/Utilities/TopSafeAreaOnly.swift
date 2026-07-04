//
//  TopSafeAreaOnly.swift
//  MediNest Pro
//
//  Created by Owais on 6/23/26.
//

import SwiftUI

struct TopSafeAreaOnly: View {
    let bgColor: Color
    
    var body: some View {
        bgColor
            .frame(height: 62)
            .background(Color.primaryButton)
            .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    TopSafeAreaOnly(bgColor: .primaryButton)
}
