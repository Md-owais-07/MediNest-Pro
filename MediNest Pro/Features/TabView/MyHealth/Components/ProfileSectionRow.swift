//
//  ProfileSectionRow.swift
//  MediNest Pro
//
//  Created by Owais on 7/29/26.
//

import SwiftUI

struct ProfileSectionRow: View {
    let title: String
    let description: String
    let leadingIcon: String
    let trailingIcon: String = "chevron.right"
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 18) {
                Image(systemName: leadingIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 20)
                    .foregroundColor(.black)
                
                VStack(alignment: .leading, spacing: 3) {
                    Text(title)
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundStyle(.black)
                        .lineLimit(1)
                    
                    Text(description)
                        .font(.system(size: 13, weight: .regular))
                        .foregroundStyle(.gray)
                        .lineLimit(1)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                Image(systemName: trailingIcon)
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity)
            .frame(height: 75)
            
            .background(
                .white
            )
        }
    }
}

#Preview {
    ProfileSectionRow(title: "Help", description: "Get hlp or rise complain", leadingIcon: "questionmark.circle", action: {})
}
