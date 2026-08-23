//
//  CustomRectangle.swift
//  MediNest Pro
//
//  Created by Owais on 8/16/26.
//

import SwiftUI

struct CustomRectangle: View {
    var body: some View {
        Rectangle()
            .fill(.gray)
            .frame(width: 5, height: 5)
            .clipShape(.circle)
    }
}

#Preview {
    CustomRectangle()
}
