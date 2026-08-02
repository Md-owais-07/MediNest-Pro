//
//  HealthMemberSection.swift
//  MediNest Pro
//
//  Created by Owais on 7/29/26.
//

import SwiftUI

struct HealthMemberSection: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 10) {
                Image("placeholder")
                    .resizable()
                    .frame(width: 35, height: 35)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Become a member")
                        .font(.system(size: 17, weight: .bold))
                        .foregroundStyle(.white)
                        .lineLimit(1)
                    
                    Text("Save Upto 1200 Every Month")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundStyle(.white)
                        .lineLimit(1)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundStyle(.white)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 80)
            .padding(.horizontal, 14)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(
                        .black
                    )
            )
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 25)
    }
}

#Preview {
    HealthMemberSection(action: {})
}
