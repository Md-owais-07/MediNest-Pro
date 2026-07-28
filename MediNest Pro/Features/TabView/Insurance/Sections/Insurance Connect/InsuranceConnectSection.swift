//
//  InsuranceConnectSection.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct InsuranceConnectSection: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 10) {
                Image(systemName: "phone.circle")
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundStyle(.appGreen)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Takes less than a minute")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundStyle(.appGreen)
                        .lineLimit(1)
                    
                    Text("Connect with us on WhatsApp!")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundStyle(.black)
                        .lineLimit(1)
                    
                    Text("Quick Guidance for you.")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(.black)
                        .lineLimit(1)
                        .padding(.top, 2)
                }
                
                Spacer(minLength: 6)
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundStyle(.white)
                    .frame(width: 34, height: 34)
                    .background(.black)
                    .clipShape(.circle)
            }
            .padding(.horizontal, 12)
            .frame(height: 82)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.gray.opacity(0.6), lineWidth: 0.6)
                    )
            )
            .padding(.horizontal, 16)
        }
        .padding(.vertical, 30)
    }
}

#Preview {
    InsuranceConnectSection(action: {})
}
