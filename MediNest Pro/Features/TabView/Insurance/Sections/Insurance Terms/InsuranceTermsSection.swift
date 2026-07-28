//
//  InsuranceTermsSection.swift
//  MediNest Pro
//
//  Created by Owais on 7/26/26.
//

import SwiftUI

struct InsuranceTermsSection: View {
    let title: String = "Hi"
    let frameHeight: CGFloat = 55
    let frameExpandedHeight: CGFloat = 390
    let action: () -> Void
    
    let privacyItems = [
        "Disclaimer",
        "Privacy Policy",
        "Terms of Use"
    ]
    
    let detailText: String = "Welcome to MediNest, your trusted healthcare companion. By accessing or using the MediNest mobile application, website, or any of our services, you agree to be bound by these Terms & Conditions. If you do not agree with any part of these terms, please discontinue using the application immediately. These terms are intended to ensure a safe, secure, and reliable experience for all users.MediNest is designed to help users discover healthcare products, purchase medicines, schedule lab tests, book doctor consultations, and manage health-related services from a single platform. While we strive to provide accurate product information and healthcare resources, all content available within the application is provided for general informational purposes only and should never be considered a substitute for professional medical advice, diagnosis, or treatment. Always consult a qualified healthcare professional before making any medical decisions.By creating an account with MediNest, you confirm that the information provided by you is accurate, complete, and up to date."
    
    @Binding var isExpanded: Bool
    
    var body: some View {
            VStack(spacing: 0) {
                Button(action: action) {
                    HStack(alignment: .center) {
                        Text("Terms and Conditions")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(.black)
                        
                        Spacer()
                        
                        Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(.black)
                    }
                    .frame(height: frameHeight)
                }
                
                if isExpanded {
                    Text(isExpanded ? detailText : "")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 0) {
                        ForEach(privacyItems.indices, id: \.self) { index in
                            Text(privacyItems[index])
                                .overlay(alignment: .bottom) {
                                    Rectangle()
                                        .fill(.black)
                                        .frame(height: 1.2)
                        }
                            
                            if index != privacyItems.count - 1 {
                                Spacer()
                                Divider()
                                    .frame(width: 1.5, height: 20)
                                    .background(.black)
                                Spacer()
                            }
                        }
                    }
                    .font(.system(size: 15, weight: .semibold))
                    .padding(.vertical, 20)
                }
            }
            .frame(maxWidth: .infinity, alignment: .top)
            .frame(height: isExpanded ? frameExpandedHeight : frameHeight, alignment: .top)
            .padding(.horizontal, 20)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.gray.opacity(0.7), lineWidth: 0.6)
                    )
            )
            .padding(.horizontal, 16)
            .animation(.easeInOut, value: isExpanded)
    }
}

#Preview {
    InsuranceTermsSection(action: {}, isExpanded: .constant(false))
}
