//
//  PharmacyPersonalCareTabItemView.swift
//  MediNest Pro
//
//  Created by Owais on 7/8/26.
//

import SwiftUI

struct PharmacyPersonalCareTabItemView: View {
    let item: PharmacyPersonalCareModel
    
    var body: some View {
        Button {
            //
        } label: {
            VStack(spacing: 5) {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.orange)
                            .frame(width: 60, height: 60)
                    )
                
                Text(item.title)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(.black)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .frame(height: 35, alignment: .top)
            }
        }
    }
}

#Preview {
    PharmacyPersonalCareTabItemView(item: PharmacyPersonalCareData[0])
}
