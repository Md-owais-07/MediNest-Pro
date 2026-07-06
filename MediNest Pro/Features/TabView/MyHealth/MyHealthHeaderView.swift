//
//  MyHealthHeaderView.swift
//  MediNest Pro
//
//  Created by Owais on 7/2/26.
//

import SwiftUI

struct MyHealthHeaderView: View {
    
    @State private var searchText: String = ""
    @EnvironmentObject private var session: SessionManager
    
    let action: () -> Void
    
    var body: some View {
        VStack(spacing: -5) {
            HStack(spacing: 18) {
                
                Button(action: action) {
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18, height: 18)
                        .foregroundStyle(.black)
                        .background(
                            Circle()
                                .fill(Color.textGray.opacity(0.5))
                                .frame(width: 40, height: 40)
                            
                            
                        )
                }
                .padding(.bottom, 8)
                
                AppHeaderView(
                    title: "Showing Records Of",
                    delivery: session.currentUser?.fullName ?? "Guest",
                    imageIcon: "questionmark.circle",
                    titleColor: .black,
                    iconColor: .black,
                    leadingAction: {},
                    trailingAction: {},
                    locationAction: {}
                )
            }
            .padding(.horizontal, 10)
            
            AppSearchBarView(
                text: $searchText,
                action: {
                    print("Cart tapped...")
                }
            )
            
        }
        .padding(.horizontal, 16)
        .background(.health)
    }
}

#Preview {
    MyHealthHeaderView(action: {})
}
