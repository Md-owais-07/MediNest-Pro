//
//  StyledTextView.swift
//  MediNest Pro
//
//  Created by Owais on 6/24/26.
//

import SwiftUI

struct StyledTextView: View {
    
    let parts: [StyledTextPart]
    var font: Font = .system(size: 12)
    var alignment: TextAlignment = .leading
    
    var body: some View {
        combinedText
            .font(font)
            .multilineTextAlignment(alignment)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var combinedText: Text {
        parts.reduce(Text("")) { result, part in
            result + Text(part.text)
                .foregroundStyle(part.color)
                .fontWeight(part.fontWeight)
        }
    }
}
