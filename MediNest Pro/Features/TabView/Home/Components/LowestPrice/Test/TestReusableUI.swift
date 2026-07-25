//
//  TestReusableUI.swift
//  MediNest Pro
//
//  Created by Owais on 7/10/26.
//

import SwiftUI

struct TestReusableUI: View {
    let data: CardUIModel
    
    var body: some View {
        VStack(spacing: 10) {
            Text(data.title)
            Text(data.description)
        }.frame(width: 100, height: 120).background(
            RoundedRectangle(cornerRadius: 12)
                .fill(.gray.opacity(0.08))
                .stroke(.black.opacity(0.6), lineWidth: 0.5)
        )
    }
}

#Preview {
    TestReusableUI(data: .init(title: "1", description: "2"))
}
