//
//  HealthLogoutSection.swift
//  MediNest Pro
//
//  Created by Owais on 7/29/26.
//

import SwiftUI

struct HealthLogoutSection: View {
    let action: () -> Void
    
    var body: some View {
        HStack {
            Spacer()
            
            HStack(spacing: 8) {
                Button(action: action) {
                    Text("Logout")
                        .font(.system(size: 15, weight: .semibold))
                    
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                        .font(.system(size: 16, weight: .medium))
                }
                
            }
            .frame(height: 20)
            .foregroundStyle(.appGreen)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 30)
    }
}

#Preview {
    HealthLogoutSection(action: {})
}
