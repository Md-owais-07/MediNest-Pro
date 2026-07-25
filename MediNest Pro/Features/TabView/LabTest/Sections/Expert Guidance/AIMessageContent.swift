//
//  AIMessageContent.swift
//  MediNest Pro
//
//  Created by Owais on 7/17/26.
//

import SwiftUI

struct AIMessageContent: View {
    let data: AIMessageModel
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            
            HStack(spacing: 0) {
                Image(data.image)
                    .renderingMode(.template)
                    .resizable()
                    .foregroundStyle(.orange)
                    .frame(width: 16, height: 16)
                
                Spacer()
                
                Text(data.title)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundStyle(.black)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 10, weight: .semibold))
                    .foregroundStyle(.black)
            }
            .padding(.horizontal, 12)
            .frame(maxWidth: .infinity)
            .frame(height: 35)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(.white)
            )
        }
    }
}

#Preview {
    AIMessageContent(data: AIMessageData[0], action: {})
}
