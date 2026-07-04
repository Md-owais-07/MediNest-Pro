//
//  AppLoaderView.swift
//  MediNest Pro
//
//  Created by Owais on 6/21/26.
//

import SwiftUI

struct AppLoaderView: View {
    
    var body: some View {
        ZStack {
            ProgressView()
                .scaleEffect(1.5)
        }
    }
}

#Preview {
    AppLoaderView()
}
