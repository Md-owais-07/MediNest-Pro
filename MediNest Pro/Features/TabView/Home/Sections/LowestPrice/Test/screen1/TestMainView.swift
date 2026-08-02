//
//  TestMainView.swift
//  MediNest Pro
//
//  Created by Owais on 7/10/26.
//

import SwiftUI

struct TestMainViewModel: Identifiable {
    let id = UUID()
    let title1: String
    let title2: String
}

let testData: [TestMainViewModel] = [
    TestMainViewModel(title1: "1", title2: "2"),
    TestMainViewModel(title1: "1", title2: "2"),
]

extension TestMainViewModel {
    var cardData: CardUIModel {
        CardUIModel(title: title1, description: title2)
    }
}

struct TestMainView: View {
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(testData) { items in
                TestReusableUI(data: items.cardData)
            }
        }
    }
}

#Preview {
    TestMainView()
}
