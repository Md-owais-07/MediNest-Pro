//
//  ExploreCardModel.swift
//  MediNest Pro
//
//  Created by Owais on 6/30/26.
//

import SwiftUI

struct ExploreCardModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let subTitle: String?
    let episodeTitle: String?
    let btnTitle: String
    let bgColor: Color
    let buttonWidth: CGFloat?
    let buttonBackground: AnyShapeStyle
    let buttonTextColor: Color
}

let exploreCardData: [ExploreCardModel] = [
    ExploreCardModel(image: "card1", title: "Think About It", subTitle: "Health Explained by Health\nExperts", episodeTitle: "S1: 10 Episodes", btnTitle: "Watch on JioHotstar", bgColor: Color("Black"), buttonWidth: nil, buttonBackground: AnyShapeStyle(LinearGradient(colors: [.pink, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)), buttonTextColor: .white),
    
    ExploreCardModel(image: "card2", title: "Apollo's\nPersonalised Health\nProgram For You", subTitle: "", episodeTitle: "", btnTitle: "Explore More", bgColor: Color("TextColor"), buttonWidth: 100, buttonBackground: AnyShapeStyle(.white), buttonTextColor: .black),
]
