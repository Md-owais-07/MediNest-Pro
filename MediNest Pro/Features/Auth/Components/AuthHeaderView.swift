//
//  LoginHeader.swift
//  MediNest Pro
//
//  Created by Owais on 6/21/26.
//

import SwiftUI

struct AuthHeaderView: View {
    let text: String
    
    var body: some View {
        VStack(spacing: 0) {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity, maxHeight: 200)
                .padding(.top, 40)
            
            Text("Consult with MediNest doctors in 15 \n mins")
                .multilineTextAlignment(.center)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(AppColors.textColor.opacity(0.8))
                .padding(.top, 40)
            
//            Text(text)
//                .multilineTextAlignment(.center)
//                .font(.system(size: 20, weight: .semibold, design: .default))
//                .foregroundStyle(AppColors.textColor)
//                .padding(.top, 30)
        }
    }
}

#Preview {
    AuthHeaderView(text: "test")
}
