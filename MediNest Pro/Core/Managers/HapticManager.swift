//
//  HapticManager.swift
//  MediNest Pro
//
//  Created by Owais on 7/28/26.
//

import UIKit

final class HapticManager {

    static let shared = HapticManager()
    
    private init() {}
    
    func light() {
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
    }

    func medium() {
        UIImpactFeedbackGenerator(style: .medium).impactOccurred()
    }

    func heavy() {
        UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
    }

    func success() {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }

    func error() {
        UINotificationFeedbackGenerator().notificationOccurred(.error)
    }
}
