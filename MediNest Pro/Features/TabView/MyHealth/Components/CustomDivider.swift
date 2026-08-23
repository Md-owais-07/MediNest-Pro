//
//  CustomDivider.swift
//  MediNest Pro
//
//  Created by Owais on 7/29/26.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .fill(.gray.opacity(0.12))
            .frame(maxWidth: .infinity)
            .frame(height: 8)
    }
}

#Preview {
    CustomDivider()
}
