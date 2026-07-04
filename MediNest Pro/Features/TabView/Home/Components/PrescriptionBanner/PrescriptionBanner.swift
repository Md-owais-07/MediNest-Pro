//
//  PrescriptionBanner.swift
//  MediNest Pro
//
//  Created by Owais on 6/24/26.
//

import SwiftUI

struct PrescriptionBanner: View {
    var body: some View {
        ZStack {
            
            HStack(spacing: 0) {
                HStack(alignment: .center, spacing: 8) {
                    Image("pres")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    
                    Text("Place An Order With\nPrescription")
                        .font(.system(size: 16, weight: .bold))
                }
                .padding(.vertical, 10)
                
                Spacer()
                
                ZStack {
                    Text("Order Now")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundStyle(.white)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 5)
                        
                }
                .background(.black)
                .cornerRadius(5)
            }
        }
        .padding(.horizontal, 14)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 16)
            .fill(
                Color.primaryButton.opacity(0.2)
            )
        )
        .padding(.horizontal, 16)
        .padding(.vertical)
    }
}

#Preview {
    PrescriptionBanner()
}
