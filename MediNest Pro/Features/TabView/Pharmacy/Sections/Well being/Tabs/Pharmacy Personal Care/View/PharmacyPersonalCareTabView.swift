//
//  PharmacyPersonalCareTabView.swift
//  MediNest Pro
//
//  Created by Owais on 7/7/26.
//

import SwiftUI

struct PharmacyPersonalCareTabView: View {
    let items: [PharmacyPersonalCareModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(items) { item in
                    PharmacyPersonalCareTabItemView(item: item)
                }
            }.padding(.horizontal, 16)
        }
    }
}

#Preview {
    PharmacyPersonalCareTabView(items: PharmacyPersonalCareData)
}
