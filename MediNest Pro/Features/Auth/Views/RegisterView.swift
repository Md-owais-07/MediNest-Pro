//
//  RegisterView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct RegisterView: View {
    @StateObject private var viewModel = RegisterVM()
    
    @EnvironmentObject private var navManager: AppNavigationManager
    @EnvironmentObject private var sessionManager: SessionManager
    @EnvironmentObject private var loader: LoaderManager
    
    var body: some View {
        ScrollView {
            VStack {
                AuthHeaderView(text: "Sign up")
                    .padding(.top, -45)
                
                VStack(spacing: 25) {
                    CustomTextField(placeholder: "Enter Your Full Name", text: $viewModel.fullName)
                    CustomTextField(placeholder: "Enter Email Address", text: $viewModel.email)
                    CustomTextField(placeholder: "Enter Password", text: $viewModel.password)
                }
                .padding(.top, 30)
                
                Spacer()
                    .frame(height: 40)
                
                CustomButton(action: {
                    Task {
                        await registerUser()
                    }
                }, title: "Sign up")
                
                Spacer()
                    .frame(height: 15)
                
                HStack(spacing: 4) {
                    Text("Already have an account?")
                        .foregroundStyle(AppColors.textColor)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Button("Sign In") {
                        navManager.popAuth()
                    }
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(AppColors.primary)
                }
            }
            .padding(.horizontal, 30)
            .navigationTitle("Sign up")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private func registerUser() async {
        loader.show()
        
        defer {
            loader.hide()
        }
        
        do {
            let user = try await viewModel.register()
            print(user.email)
            sessionManager.isLoggedIn = true
            navManager.resetAuth()
        } catch {
            print(error)
        }
    }
}

#Preview {
    RegisterView()
}
