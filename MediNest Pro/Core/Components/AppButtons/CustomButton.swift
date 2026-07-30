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
    let isLoading: Bool
    
    var body: some View {
        Button {
            HapticManager.shared.medium()
            action()
        } label: {
            ZStack {
                Text(title)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(Color.white)
                    .opacity(isLoading ? 0 : 1)
                
                if isLoading {
                    ProgressView()
                        .tint(.white)
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(AppColors.primary)
            .cornerRadius(6)
            .opacity(isLoading ? 0.8 : 1)
        }
        .disabled(isLoading)
    }
}

#Preview {
    CustomButton(action: { print("hi") }, title: "Test", isLoading: false)
}
