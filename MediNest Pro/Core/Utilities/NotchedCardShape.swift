//
//  NotchedCardShape.swift
//  MediNest Pro
//
//  Created by Owais on 7/27/26.
//

import SwiftUI

// MARK: - Custom notched card shape
struct NotchedCardShape: Shape {
    var cornerRadius: CGFloat
    var notchRadius: CGFloat   // should match icon circle's radius
    var notchGap: CGFloat = 3  // small ring of white visible around the circle

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let r = notchRadius + notchGap
        let notchCenterX = rect.midX

        path.move(to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY))
        path.addLine(to: CGPoint(x: notchCenterX - r, y: rect.minY))

        // dip downward around the circle — this is the "hugging" curve
        path.addArc(center: CGPoint(x: notchCenterX, y: rect.minY),
                    radius: r, startAngle: .degrees(180), endAngle: .degrees(0),
                    clockwise: true)

        path.addLine(to: CGPoint(x: rect.maxX - cornerRadius, y: rect.minY))
        path.addArc(center: CGPoint(x: rect.maxX - cornerRadius, y: rect.minY + cornerRadius),
                    radius: cornerRadius, startAngle: .degrees(-90), endAngle: .degrees(0), clockwise: false)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - cornerRadius))
        path.addArc(center: CGPoint(x: rect.maxX - cornerRadius, y: rect.maxY - cornerRadius),
                    radius: cornerRadius, startAngle: .degrees(0), endAngle: .degrees(90), clockwise: false)
        path.addLine(to: CGPoint(x: rect.minX + cornerRadius, y: rect.maxY))
        path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.maxY - cornerRadius),
                    radius: cornerRadius, startAngle: .degrees(90), endAngle: .degrees(180), clockwise: false)
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + cornerRadius))
        path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.minY + cornerRadius),
                    radius: cornerRadius, startAngle: .degrees(180), endAngle: .degrees(270), clockwise: false)
        path.closeSubpath()
        return path
    }
}

#Preview {
    NotchedCardShape(cornerRadius: 12, notchRadius: 10)
}
