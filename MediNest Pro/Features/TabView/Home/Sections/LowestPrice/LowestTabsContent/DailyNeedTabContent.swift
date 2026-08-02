//
//  DailyNeedTabContent.swift
//  MediNest Pro
//
//  Created by Owais on 7/1/26.
//

import SwiftUI

struct DailyNeedTabContent: View {
    var body: some View {
        VStack {
            LowestPriceCardView(lowestData: lowestPriceData)
        }
    }
}

#Preview {
    DailyNeedTabContent()
}
