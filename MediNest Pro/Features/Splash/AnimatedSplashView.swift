//
//  AnimatedSplashView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct AnimatedSplashView: View {
    
    @State private var logoScale: CGFloat = 0.75
    @State private var logoOpacity: Double = 0
    @State private var textOffset: CGFloat = 18
    @State private var textOpacity: Double = 0
    @State private var pulse = false
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                // Logo block
                ZStack {
                    Circle()
                        .fill(
                            RadialGradient(
                                colors: [
                                    Color.orange.opacity(0.18),
                                    Color.clear
                                ],
                                center: .center,
                                startRadius: 10,
                                endRadius: 120
                            )
                        )
                        .frame(width: 180, height: 180)
                        .scaleEffect(pulse ? 1.08 : 0.92)
                        .opacity(pulse ? 1 : 0.65)
                    
                    Image("t") // add your logo asset here
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .scaleEffect(logoScale)
                        .opacity(logoOpacity)
                }
                
                VStack(spacing: 8) {
                    Text("MediNest Pro")
                        .font(.system(size: 34, weight: .bold))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [Color.teal, Color.orange],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                    
                    Text("Your Health, Our Priority")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(Color.gray)
                }
                .opacity(textOpacity)
                .offset(y: textOffset)
            }
        }
        .onAppear {
            startAnimation()
        }
    }
    
    private func startAnimation() {
        withAnimation(.spring(response: 0.7, dampingFraction: 0.72)) {
            logoScale = 1
            logoOpacity = 1
        }
        
        withAnimation(.easeOut(duration: 0.55).delay(0.25)) {
            textOpacity = 1
            textOffset = 0
        }
        
        withAnimation(
            .easeInOut(duration: 1.1)
            .repeatForever(autoreverses: true)
            .delay(0.2)
        ) {
            pulse = true
        }
    }
}
#Preview {
    AnimatedSplashView()
}
