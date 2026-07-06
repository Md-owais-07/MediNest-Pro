//
//  DividerView.swift
//  MediNest Pro
//
//  Created by Owais on 7/6/26.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        HStack(spacing: 16) {
            
            Rectangle()
                .fill(Color.gray.opacity(0.30))
                .frame(height: 1.5)
            
            Text("OR")
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.textGray.opacity(0.8))
            
            Rectangle()
                .fill(Color.gray.opacity(0.30))
                .frame(height: 1.5)
        }
    }
}

#Preview {
    DividerView()
}
