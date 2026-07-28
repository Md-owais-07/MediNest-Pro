//
//  InsuranceWideRangeSection.swift
//  MediNest Pro
//
//  Created by Owais on 7/27/26.
//

import SwiftUI

struct InsuranceWideRangeSection: View {
    let data: [InsuranceWideRangeCardModel]
    
    var body: some View {
        VStack(spacing: 18) {
            Text("Wide range of plans which covers")
                .font(.system(size: 16, weight: .semibold))
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(data) { data in
                        InsuranceWideRangeCard(systemIcon: data.image, title: data.title) {
                            //
                        }.frame(height: 185)
                    }
                }.padding(.horizontal, 16)
            }
        }
    }
}

#Preview {
    InsuranceWideRangeSection(data: InsuranceWideRangeCardData)
}
