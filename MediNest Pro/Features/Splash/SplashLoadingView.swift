//
//  SplashLoadingView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct SplashLoadingView: View {
    var body: some View {
        VStack(spacing: 16) {
            ProgressView()
            Text("Loading MediNest Pro...")
                .font(.headline)
        }
    }
}

#Preview {
    SplashLoadingView()
}
