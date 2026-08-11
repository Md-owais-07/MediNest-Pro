//
//  Navigation+InteractivePop.swift
//  MediNest Pro
//
//  Created by Owais on 8/8/26.
//

import UIKit

extension UINavigationController: @retroactive UIGestureRecognizerDelegate {

    open override func viewDidLoad() {
        super.viewDidLoad()

        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(
        _ gestureRecognizer: UIGestureRecognizer
    ) -> Bool {
        viewControllers.count > 1
    }
}
