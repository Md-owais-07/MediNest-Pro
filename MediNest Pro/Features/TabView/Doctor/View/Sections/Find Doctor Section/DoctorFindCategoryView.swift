//
//  DoctorFindCategoryView.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct DoctorFindCategoryView: View {
    let action: () -> Void
    let data: DoctorTopCardUIModel
    
    let imageBoxHeight: CGFloat = 80
    let textHeight: CGFloat = 30
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 12) {
                Image(data.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 45)
                    .frame(width: imageBoxHeight, height: imageBoxHeight)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.textGray.opacity(0.26))
                    )
                    
                
                Text(data.title)
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .frame(height: textHeight, alignment: .top)
            }
        }
    }
}

#Preview {
    DoctorFindCategoryView(action: {}, data: DoctorTopCardUIModel(title: "Demo", image: "placeholder"))
}
