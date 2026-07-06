//
//  LoginView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject private var navManager: NavigationManager
    @EnvironmentObject private var sessionManager: SessionManager
    @EnvironmentObject private var loader: LoaderManager
    
    @StateObject private var viewModel = LoginVM()
    
    var body: some View {
        ScrollView {
            VStack {
                AuthHeaderView(text: "Sign in")
                
                VStack(spacing: 25) {
                    CustomTextField(placeholder: "Enter Email Address", text: $viewModel.email)
                    
                    CustomTextField(placeholder: "Enter Password", isSecure: true, text: $viewModel.password)
                }
                .padding(.top, 30)
                
                HStack {
                    Spacer()
                    
                    Button("Forgot Password?") {
                        navManager.pushAuth(.forgotPassword)
                    }
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(AppColors.textColor)
                }
                .padding(.top, 14)
                
                if let error = viewModel.errorMessage {
                    Text(error)
                        .foregroundStyle(.red)
                        .font(.system(size: 14))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 12)
                }
                
                Spacer()
                    .frame(height: 40)
                
                CustomButton(action: {
                    Task {
                        await loginUser()
                    }
                }, title: "Sign in")
                
                Spacer()
                    .frame(height: 15)
                
                HStack(spacing: 4) {
                    Text("Don't have an account?")
                        .foregroundStyle(AppColors.textColor)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Button("Sign Up") {
                        navManager.pushAuth(.register)
                    }
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(AppColors.primary)
                }
            }
            .padding(.horizontal, 30)
        }
    }
    
    private func loginUser() async {
        loader.show()
        
        defer {
            loader.hide()
        }
        
        do {
            let user = try await viewModel.login()
            sessionManager.login(user: user)
            navManager.resetAuth()
        } catch {
            viewModel.errorMessage = error.localizedDescription
        }
    }
    
}


#Preview {
    LoginView()
}
