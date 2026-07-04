//
//  CustomButton.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct CustomButton: View {
    let action: () -> Void
    let title: String
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(Color.white)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(AppColors.primary)
                .cornerRadius(6)
        }
    }
}

#Preview {
    CustomButton(action: { print("hi") }, title: "Test")
}
