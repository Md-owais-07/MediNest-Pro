//
//  InsurancePlanCard.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct InsurancePlanCard: View {
    let data: InsurancePlanUIModel
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(data.title)
                        .font(.system(size: 14, weight: .bold))
                        .foregroundStyle(.black)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                    
                    Text(data.subTitle)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.black)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                }
                .padding(.top, 16)
                
                
                Spacer(minLength: 30)
                
                HStack(alignment: .center, spacing: 6) {
                    Text(data.buttonTitle)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 35)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.black)
                        )
                        .padding(.bottom, 16)
                    
                    Spacer()
                    
                    Image(data.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                }
            }
            .padding(.horizontal, 12)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(
                        LinearGradient(colors: [.white, .orange.opacity(0.1)], startPoint: .top, endPoint: .bottom)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.gray.opacity(0.6), lineWidth: 0.8)
                    )
            )
        }
    }
}

#Preview {
    InsurancePlanCard(data: InsurancePlanUIModel(title: "dmeo", subTitle: "demo", buttonTitle: "dem", image: "placeholder"), action: {})
}
