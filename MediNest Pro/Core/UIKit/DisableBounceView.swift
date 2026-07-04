//
//  DisableBounceView.swift
//  MediNest Pro
//
//  Created by Owais on 7/3/26.
//

import SwiftUI

struct DisableBounceView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIView {
        let view = UIView()

        DispatchQueue.main.async {
            var superview = view.superview

            while let current = superview {

                if let scrollView = current as? UIScrollView {
                    scrollView.bounces = false
                    break
                }

                superview = current.superview
            }
        }

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) { }
}
