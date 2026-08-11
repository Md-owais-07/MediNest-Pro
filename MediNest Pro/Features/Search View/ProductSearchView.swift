//
//  ProductSearchView.swift
//  MediNest Pro
//
//  Created by Owais on 8/8/26.
//

import SwiftUI

struct ProductSearchView: View {
    @State private var searchText: String = ""
    @EnvironmentObject var navManager: NavigationManager
    
    @FocusState private var isSearchFocused: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HeaderSearchView(
                text: $searchText,
                autoFocus: true,
                showCartButton: true,
                leadinIcon: "arrow.left",
                placeHolderText: "Search medicine and essentials",
                action: {
                    
                },
                leadingAction: {
                    navManager.pop()
                }
            )
            
            Text("You may like")
                .font(.system(size: 16, weight: .semibold))
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .padding(.horizontal, 16)
    }
}

#Preview {
    ProductSearchView()
        .environmentObject(CartManager())
        .environmentObject(NavigationManager())
}
