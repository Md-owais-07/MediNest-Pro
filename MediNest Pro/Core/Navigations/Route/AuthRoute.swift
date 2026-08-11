//
//  AuthRoute.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

enum AuthRoute: Hashable {
    case register
    case forgotPassword
}

@ViewBuilder
func authDestination(_ route: AuthRoute) -> some View {
    switch route {
    case .register:
        RegisterView()
    case .forgotPassword:
        ForgotPasswordView()
    }
}
