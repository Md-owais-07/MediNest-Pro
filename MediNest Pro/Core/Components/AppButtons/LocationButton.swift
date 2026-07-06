//
//  LocationButton.swift
//  MediNest Pro
//
//  Created by Owais on 7/6/26.
//

import SwiftUI

struct LocationButton: View {
    let action: () -> Void
    let title: String
    let image: String
    let color: Color
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                
                Text(title)
                    .font(.system(size: 16, weight: .semibold))
            }
            .foregroundStyle(color)
            .frame(maxWidth: .infinity)
            .frame(height: 45)
        }
    }
}

#Preview {
    LocationButton(action: {}, title: "Demo", image: "mappin.and.ellipse", color: .appGreen)
}
