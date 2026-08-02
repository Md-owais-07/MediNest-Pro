//
//  HomeSearchBarSection.swift
//  MediNest Pro
//
//  Created by Owais on 6/22/26.
//

import SwiftUI

struct AppSearchBarView: View {
    
    @Binding var text: String
    let action: () -> Void
    
    var body: some View {
        HStack(spacing: 12) {
            
            HStack(spacing: 10) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 22))

                TextField("Search", text: $text)

                Divider()
                    .frame(height: 24)

                Button {
                    // Scan action
                } label: {
                    Image(systemName: "cross.case")
                        .font(.system(size: 22))
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal, 14)
            .frame(height: 55)
            .background(
                RoundedRectangle(cornerRadius: 14)
                    .fill(.white)
                    .stroke(.black.opacity(0.4), lineWidth: 1)
            )
            
            Button(action: action) {
                Image(systemName: "cart")
                    .resizable()
                    .frame(width: 26, height: 24)
                    .foregroundStyle(.black)
                    .frame(width: 55, height: 55)
                    .background(
                        RoundedRectangle(cornerRadius: 14)
                            .fill(.white)
                            .stroke(.black.opacity(0.4), lineWidth: 1)
                    )
            }
        }
        .padding(.bottom)
    }
}

#Preview {
    AppSearchBarView(text: .constant(""), action: {})
}
