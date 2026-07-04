//
//  HomeTopHeaderView.swift
//  MediNest Pro
//
//  Created by Owais on 6/22/26.
//

import SwiftUI

struct AppHeaderView: View {

    let title: String
    let delivery: String
    let imageIcon: String
    let titleColor: Color
    let iconColor: Color
    let leadingAction: () -> Void
    let trailingAction: () -> Void
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.system(size: 14, weight: .semibold))
                
                HStack(spacing: 4) {
                    Text(delivery)
                        .font(.system(size: 12, weight: .medium))
                    
                    Image(systemName: "chevron.down")
                        .font(.system(size: 12, weight: .semibold))
                }
            }
            .foregroundStyle(titleColor)
            
            Spacer()
            
            HStack(spacing: 15) {
                Button {
                    leadingAction()
                } label: {
                    Image(systemName: imageIcon)
                        .resizable()
                        .frame(width: 26, height: 24)
                }
                
                Button {
                    trailingAction()
                } label: {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 27, height: 27)
                }
            }
            .foregroundStyle(iconColor)
        }
        .padding(.bottom, 12)
        .frame(height: 60)
        
    }
}

#Preview {
    AppHeaderView(title: "Hi", delivery: "Unnao 209861", imageIcon: "wallet.bifold", titleColor: .black, iconColor: .black, leadingAction: {}, trailingAction: {})
}
