//
//  DoctorInstantSection.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct DoctorInstantSection: View {
    let action: () -> Void
    let leftIcon: String
    let secondIcon: String
    let title: String
    let subTitle: String
    let rightIcon: String
//    let bgColor: Color
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 10) {
                Image(leftIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                
                VStack(spacing: 6) {
                    HStack(spacing: 6) {
                        Image(secondIcon)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 16, height: 16)
                            .foregroundStyle(.healthDark)
                            
                        
                        Text(title)
                            .font(.system(size: 16, weight: .heavy))
                            .foregroundStyle(.black)
                    }
                    
                    Text(subTitle)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                Image(systemName: rightIcon)
                    .font(.system(size: 18, weight: .medium))
                    .foregroundStyle(.black)
            }
            .frame(height: 65)
            .padding(.horizontal, 14)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(
                        LinearGradient(colors: [.orange.opacity(0.15), .orange.opacity(0.45)], startPoint: .leading, endPoint: .trailing)
                    )
            )
        }
        .padding(.top, 20)
        .padding(.horizontal, 16)
    }
}

#Preview {
    DoctorInstantSection(action: {}, leftIcon: "doctor", secondIcon: "electric", title: "Instant Doctor Consult", subTitle: "Connect in under 5 seconds", rightIcon: "chevron.right")
}
