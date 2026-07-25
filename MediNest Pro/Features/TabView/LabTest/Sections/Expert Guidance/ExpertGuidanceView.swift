//
//  ExpertGuidanceView.swift
//  MediNest Pro
//
//  Created by Owais on 7/17/26.
//

import SwiftUI

struct ExpertGuidanceView: View {
    let action: () -> Void
    let textFieldAction: () -> Void
    
    @Binding var textField: String
    
    var body: some View {
        Button(action: action) {
            ZStack(alignment: .leading) {
                
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 16) {
                        HStack(spacing: 5) {
                            Image("ai")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 10, height: 10)
                            
                            Text("AI")
                                .font(.system(size: 10, weight: .semibold))
                        }
                        .padding(.horizontal, 5)
                        .frame(height: 16)
                        .background(
                            RoundedRectangle(cornerRadius: 2)
                                .fill(.white)
                        )
                        
                        Text("Need expert guidance\non lab tests and\nreports?")
                            .font(.system(size: 18, weight: .semibold))
                            .lineSpacing(8)
                        
                        Text("ASK MEDINEST ABOUT...")
                            .font(.system(size: 13, weight: .medium))
                    }
                    .padding(.leading, 18)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .overlay(alignment: .topTrailing) {
                        ZStack(alignment: .center) {
                            Text("Ask\nMedinest")
                                .font(.system(size: 12, weight: .bold))
                                .multilineTextAlignment(.leading)
                                .foregroundStyle(.white)
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(
                                    .orange
                                )
                                .frame(width: 62, height: 62)
                        )
                        .padding(.trailing, 34)
                        .padding(.top, 20)
                            
                    }
                    
                    AIMessageView(item: AIMessageData)
                    
                    HStack(spacing: 0) {
                        TextField("Or Just Ask Medinest...", text: $textField)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .multilineTextAlignment(.leading)
                        
                        Button(action: textFieldAction) {
                            Image(systemName: "paperplane")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.gray)
                        }
                    }
                    .padding(.horizontal, 18)
                    .frame(height: 48)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(.white)
                            .stroke(.black, lineWidth: 0.5)
                    )
                    .padding(.horizontal, 18)
                    .padding(.top, 20)
                }
                .padding(.vertical, 18)
            }
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(.lab)
                    .stroke(.gray.opacity(0.3), lineWidth: 0.6)
            )
            .padding(.horizontal, 16)
        }
        .padding(.vertical, 35)
    }
}

#Preview {
    ExpertGuidanceView(action: {}, textFieldAction: {}, textField: .constant(""))
}
