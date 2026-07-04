//
//  BodyCheckupHeader.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import SwiftUI

struct BodyCheckupHeader: View {
    var body: some View {
        HStack(spacing: -30) {
            Image("ultimateHealth")
                .resizable()
                .frame(width: 200, height: 120)
                .padding(.leading, -30)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Your Full Body\nCheckup is FREE")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.leading)
                
                Text("If Your Report is 100% Normal")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundStyle(.black)
            }
            
            Spacer()
        }
    }
}

#Preview {
    BodyCheckupHeader()
}
