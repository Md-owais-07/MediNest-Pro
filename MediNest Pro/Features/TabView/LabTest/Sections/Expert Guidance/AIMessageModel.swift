//
//  AIMessageModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/17/26.
//

import SwiftUI

struct AIMessageModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
}

let AIMessageData = [
    AIMessageModel(image: "ai", title: "Lab tests required for Urinary Tract Infection"),
    AIMessageModel(image: "ai", title: "What does HbA1c measure?"),
    AIMessageModel(image: "ai", title: "Are my cholesterol valueswithin the normal stage?"),
]
