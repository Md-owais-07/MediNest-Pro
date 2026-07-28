//
//  InsuranceTopImage.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct InsuranceTopImage: View {
    var body: some View {
        Image("insHeader")
            .resizable()
            .scaledToFit()
            .padding(.vertical, 16)
    }
}

#Preview {
    InsuranceTopImage()
}
