//
//  MyHealthTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct MyHealthTabView: View {
    @EnvironmentObject private var sessionManager: SessionManager
    @EnvironmentObject private var loader: LoaderManager
    @EnvironmentObject private var navManager: NavigationManager
    
    @State private var isExpanded: Bool = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                MyHealthHeaderView(action: {})
                HealthMemberSection(action: {})
                CustomDivider()
                ProfileSectionRowItems(items: ProfileSectionRowData)
                
                HealthAboutSection(leadingIcon: "f", title: "About MediNest Pro", description: "About us, T&Cs and Pilicies", trailingIcon: "chevron.down", action: { isExpanded.toggle() }, isExpanded: $isExpanded)
                
                HealthLogoutSection {
                    sessionManager.logout()
                }
                
                Rectangle()
                    .fill(.white)
                    .frame(height: 50)
                
                BottomView(prodText: "PROD - v 1.0.0 (1)", iconLeading: "fp", iconCenter: "fw", iconTrailing: "fh", isImage: false)
                
                Rectangle()
                    .fill(.white)
                    .frame(height: 100)
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    MyHealthTabView()
        .environmentObject(SessionManager())
        .environmentObject(NavigationManager())
}
