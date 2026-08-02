//
//  MyProfileSection.swift
//  MediNest Pro
//
//  Created by Owais on 7/28/26.
//

import SwiftUI

struct MyProfileSection: View {
    let userName: String
    let contact: String
    let userId: String
    let userProfil: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 10) {
                ZStack {
                    Circle()
                        .fill(.blue.opacity(0.2))
                        .frame(width: 55, height: 55)
                        .overlay {
                            Text(userProfil)
                                .font(.system(size: 30, weight: .bold))
                                .foregroundStyle(.black)
                                .lineLimit(1)
                        }
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(userName)
                        .font(.system(size: 18, weight: .bold))
                        .foregroundStyle(.black)
                    
                    Text(contact)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.gray)
                    
                    Text(userId)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundStyle(.gray)
                        .padding(.top, 2)
                }
                
                Spacer()
            }
            .padding(.horizontal, 12)
            .frame(maxWidth: .infinity)
            .frame(height: 90)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(.white)
//                    .fill(.gray.opacity(0.1))
            )
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    MyProfileSection(userName: "Neck John", contact: "9678342567", userId: "ABC123", userProfil: "A", action: {})
}
