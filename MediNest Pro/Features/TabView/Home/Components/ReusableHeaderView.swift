//
//  ReusableHeaderView.swift
//  MediNest Pro
//
//  Created by Owais on 8/2/26.
//

import SwiftUI

struct ReusableHeaderView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        ZStack {
            Text(title)
                .font(.system(size: 15, weight: .semibold))
            
            HStack {
                Button(action: action) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundStyle(.black)
                }
                
                Spacer()
            }
        }
        .frame(height: 60)
        .padding(.horizontal, 16)
        .background(.white)
    }
}

#Preview {
    ReusableHeaderView(title: "My Account", action: {})
}
