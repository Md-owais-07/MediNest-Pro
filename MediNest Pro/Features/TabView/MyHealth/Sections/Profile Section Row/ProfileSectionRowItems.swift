//
//  ProfileSectionRowItems.swift
//  MediNest Pro
//
//  Created by Owais on 7/29/26.
//

import SwiftUI

struct ProfileSectionRowItems: View {
    let items: [ProfileSectionRowModel]
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(items.prefix(4)) { item in
                ProfileSectionRow(
                    title: item.title,
                    description: item.description,
                    leadingIcon: item.leadingIcon,
                    action: {
                        //
                    }
                )
                
                CustomDivider()
            }
            
            VStack(alignment: .leading, spacing: 0) {
                Text("More")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(.black)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 20)
                
                ForEach(items.dropFirst(4)) { item in
                    ProfileSectionRow(
                        title: item.title,
                        description: item.description,
                        leadingIcon: item.leadingIcon) {
                            //
                        }
                }
            }
        }
    }
}

#Preview {
    ProfileSectionRowItems(items: ProfileSectionRowData)
}


