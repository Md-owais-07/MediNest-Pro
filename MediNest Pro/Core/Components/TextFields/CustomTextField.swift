//
//  CustomTextField.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: String
    var isSecure: Bool = false
    
    @Binding var text: String

    var body: some View {
        VStack {
            if isSecure {
                SecureField(placeholder, text: $text)
                    .keyboardType(.default)
                    .multilineTextAlignment(.leading)
                    .frame(height: 44)
                    .cornerRadius(12)
            } else {
                TextField(placeholder, text: $text)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .multilineTextAlignment(.leading)
                    .frame(height: 44)
                    .cornerRadius(12)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: 44)
        .background(Color.white)
        .overlay(alignment: .bottom) {
            Divider().background(Color.black)
        }
    }
}

#Preview {
    CustomTextField(placeholder: "dm", text: .constant(""))
}
