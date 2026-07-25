//
//  AIMessageView.swift
//  MediNest Pro
//
//  Created by Owais on 7/17/26.
//

import SwiftUI

struct AIMessageView: View {
    let item: [AIMessageModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(item) { items in
                    AIMessageContent(data: items) {
                        //
                    }
                }
            }
            .padding(.horizontal, 18)
        }
        .padding(.top, 10)
    }
}

#Preview {
    AIMessageView(item: AIMessageData)
}
