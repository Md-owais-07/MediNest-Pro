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
    
    var body: some View {
        NavigationStack {
            
            ZStack(alignment: .top) {
                TopSafeAreaOnly(bgColor: .health)
                
                VStack(spacing: 0) {
                    MyHealthHeaderView(action: {})
                    
                    ScrollView {
                        
                        VStack(spacing: 0) {
                            Spacer()
                            
                            Button("Logout") {
                                loader.show()
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                                    sessionManager.logout()
                                    loader.hide()
                                }
                            }
                            .buttonStyle(.borderedProminent)
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    MyHealthTabView()
}
