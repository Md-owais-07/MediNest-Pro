//
//  SearchView.swift
//  MediNest Pro
//
//  Created by Owais on 8/8/26.
//

import SwiftUI

struct HeaderSearchView: View {
    
    @Binding var text: String
    @EnvironmentObject var cartManager: CartManager
    
    var autoFocus: Bool = false
    @FocusState private var isFocused: Bool
    
    var showScanButton: Bool = false
    var showCartButton: Bool = false
    var disableTextField: Bool = false
    
    let leadinIcon: String
    let placeHolderText: String
    
    let action: () -> Void
    var scanAction: (() -> Void)? = nil
    var leadingAction: (() -> Void)? = nil
    
    var body: some View {
        HStack(spacing: 12) {
            
            HStack(spacing: 10) {
                Image(systemName: leadinIcon)
                    .font(.system(size: 22))
                    .onTapGesture {
                        leadingAction?()
                    }
                
                TextField(placeHolderText, text: $text)
                    .focused($isFocused)
                    .onAppear {
                        if autoFocus {
                            DispatchQueue.main.asyncAfter(deadline: .now()) {
                                isFocused = true
                            }
                        }
                    }
                
                if showScanButton {
                    Divider()
                        .frame(height: 24)
                    
                    Button {
                        scanAction?()
                    } label: {
                        Image(systemName: "cross.case")
                            .font(.system(size: 22))
                            .foregroundColor(.black)
                    }
                }
            }
            .disabled(disableTextField)
            .padding(.horizontal, 14)
            .frame(height: 55)
            .background(
                RoundedRectangle(cornerRadius: 14)
                    .fill(.white)
                    .stroke(.black.opacity(0.4), lineWidth: 1)
            )
            
            if showCartButton {
                Button(action: action) {
                    Image(systemName: "cart")
                        .resizable()
                        .frame(width: 26, height: 24)
                        .foregroundStyle(.black)
                        .frame(width: 55, height: 55)
                        .background(
                            RoundedRectangle(cornerRadius: 14)
                                .fill(.white)
                                .stroke(.black.opacity(0.4), lineWidth: 1)
                        )
                        .overlay(alignment: .topTrailing) {
                            if cartManager.cartCount > 0 {
                                Text("\(cartManager.cartCount)")
                                    .font(.system(size: 14, weight: .bold))
                                    .foregroundStyle(.white)
                                    .frame(width: 20, height: 20)
                                    .background(.red)
                                    .clipShape(Circle())
                                    .padding([.top, .trailing], 6)
                            }
                            
                        }
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.bottom)
    }
}

#Preview {
    HeaderSearchView(text: .constant(""), leadinIcon: "magnifyingglass", placeHolderText: "Placeholder", action: {})
        .environmentObject(CartManager())
}
