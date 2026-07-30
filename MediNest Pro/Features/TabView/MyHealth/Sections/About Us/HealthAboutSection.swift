//
//  HealthAboutSection.swift
//  MediNest Pro
//
//  Created by Owais on 7/29/26.
//

import SwiftUI

struct HealthAboutSection: View {
    let leadingIcon: String
    let title: String
    let description: String
    let trailingIcon: String
    let action: () -> Void
    
    let frameHeight: CGFloat = 75
    let expandedHeight: CGFloat = 320
    
    @Binding var isExpanded: Bool
    
    @EnvironmentObject var navManager: NavigationManager
    
    var body: some View {
        VStack(spacing: 0) {
            Button(action: action) {
                HStack(spacing: 18) {
                    Image(leadingIcon)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(title)
                            .font(.system(size: 15, weight: .bold))
                            .foregroundStyle(.black)
                        
                        Text(description)
                            .font(.system(size: 13, weight: .regular))
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: isExpanded ? "chevron.up" :  trailingIcon)
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 16)
                .frame(maxWidth: .infinity)
                .frame(height: 75)
            }
            
            if isExpanded {
                VStack(alignment: .leading, spacing: 18) {
                    ForEach(ProfileMenu.allCases) { item in
                        Button {
                            handleAction(item)
                            print("tapping...")
                        } label: {
                            Text(item.title)
                                .font(.system(size: 16, weight: .regular))
                                .foregroundStyle(.black)
                                .lineLimit(1)
                                .padding(.leading, 56)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 18)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: isExpanded ? expandedHeight : frameHeight, alignment: .top)
    }
}

extension HealthAboutSection {
    func handleAction(_ menu: ProfileMenu) {
        switch menu {
        case .aboutMenu:
            navManager.pushMyHealth(.aboutMenu)
        case .contactMenu:
            navManager.pushMyHealth(.contactMenu)
        case .faqsMenu:
            navManager.pushMyHealth(.faqsMenu)
        case .termsMenu:
            navManager.pushMyHealth(.termsMenu)
        case .returnsMenu:
            navManager.pushMyHealth(.returnsMenu)
        case .privacyMenu:
            navManager.pushMyHealth(.privacyMenu)
        }
    }
}

#Preview {
    HealthAboutSection(leadingIcon: "f", title: "About MediNest Pro", description: "About us, T&Cs and Pilicies", trailingIcon: "chevron.down", action: {}, isExpanded: .constant(true))
}
