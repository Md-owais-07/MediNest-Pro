//
//  BottomView.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import SwiftUI

struct BottomView: View {
    let prodText: String?
    let iconLeading: String?
    let iconCenter: String?
    let iconTrailing: String?
    
    let isImage: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            if isImage {
                Image("footer")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 80)
            }
            
            if prodText != nil {
                Text(prodText ?? "PROD - v 1.0.0 (1)")
                    .font(.system(size: 10, weight: .medium))
                    .foregroundStyle(.black.opacity(0.7))
            }
            
            VStack(alignment: .center, spacing: 20) {
                Text("Live\nHealthy")
                    .font(.system(size: 36, weight: .bold))
                    .foregroundStyle(AppColors.textGray.opacity(0.6))
                    .multilineTextAlignment(.center)
                
                Text("Crafted with ❤️ in India")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(AppColors.textGray.opacity(0.6))
            }
            .padding(.vertical, 45)
            
            VStack(spacing: 0) {
                Text("Powered by")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(AppColors.textGray.opacity(0.6))
                
                HStack(spacing: 0) {
                    Image(iconLeading ?? "")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 80)
                    
                    Image(iconCenter ?? "")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 80)
                    
                    Image(iconTrailing ?? "")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 80)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#Preview {
    BottomView(prodText: "PROD - v 1.0.0 (1)", iconLeading: "fp", iconCenter: "fh", iconTrailing: "fw", isImage: true)
}
