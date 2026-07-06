//
//  AuthRootView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct AuthRootView: View {
    @EnvironmentObject private var appNavigation: NavigationManager
    
    var body: some View {
        NavigationStack(path: $appNavigation.authPath) {
            LoginView()
                .navigationDestination(for: AuthRoute.self) { route in
                    switch route {
                    case .register:
                        RegisterView()
                        
                    case .forgotPassword:
                        ForgotPasswordView()
                    }
                }
        }
    }
}

#Preview {
    AuthRootView()
}
