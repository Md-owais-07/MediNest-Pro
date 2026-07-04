//
//  StyledTextPart.swift
//  MediNest Pro
//
//  Created by Owais on 6/24/26.
//

import SwiftUI

struct StyledTextPart {
    let text: String
    let color: Color
    let fontWeight: Font.Weight
    
    init(
        _ text: String,
        color: Color = .black,
        fontWeight: Font.Weight = .regular
    ) {
        self.text = text
        self.color = color
        self.fontWeight = fontWeight
    }
}
