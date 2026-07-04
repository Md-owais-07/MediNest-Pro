//
//  CategoriesHeader.swift
//  MediNest Pro
//
//  Created by Owais on 6/29/26.
//

import SwiftUI

struct CategoriesHeader: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("Everything for your well-being")
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.black)
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("View All")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.text)
            }

        }
        .padding(.bottom, 36)
        .padding(.horizontal, 16)
    }
}

#Preview {
    CategoriesHeader()
}
