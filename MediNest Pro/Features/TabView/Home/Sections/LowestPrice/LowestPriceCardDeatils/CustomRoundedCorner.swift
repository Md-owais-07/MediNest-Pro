//
//  CustomRoundedCorner.swift
//  MediNest Pro
//
//  Created by Owais on 8/16/26.
//

import SwiftUI

struct CustomRoundedCorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
