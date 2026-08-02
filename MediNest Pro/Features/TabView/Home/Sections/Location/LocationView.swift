//
//  LocationView.swift
//  MediNest Pro
//
//  Created by Owais on 7/6/26.
//

import SwiftUI

struct LocationView: View {
    @EnvironmentObject var presentation: PresentationManager
    @EnvironmentObject var location: LocationManager
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.clear
            
            Button {
                withAnimation(.spring()) {
                    presentation.showLocationSheet = false
                }
            } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .font(.system(size: 10, weight: .bold))
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 12, height: 12)
                    .foregroundStyle(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 20, style: .circular)
                            .fill(.black.opacity(0.7))
                            .frame(width: 35, height: 35)
                    )
            }
            .padding(.bottom, 290)

            
            VStack(spacing: 10) {
                
                Text("Deliver to")
                    .font(.system(size: 22, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 28)
                
                Rectangle()
                    .fill(Color.gray.opacity(0.25))
                    .frame(height: 1)
                    .padding(.bottom, 8)
                
                VStack(spacing: 16) {
                    LocationButton(
                        action: {
                            location.fetchCurrentLocation()
                            withAnimation(.spring()) {
                                presentation.showLocationSheet = false
                            }
                        },
                        title: "Current Location",
                        image: "mappin.and.ellipse",
                        color: .white
                    )
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.appGreen)
                    )
                    
                    DividerView()
                    
                    LocationButton(
                        action: {},
                        title: "Choose a different location",
                        image: "location.north",
                        color: .appGreen.opacity(0.9)
                    )
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.black, lineWidth: 0.8)
                    )
                }
                
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 40)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(.white)
            )
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LocationView()
        .environmentObject(PresentationManager())
        .environmentObject(LocationManager())
}
