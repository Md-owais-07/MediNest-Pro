//
//  DoctorFindCategory.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct FindDoctorSectionView: View {
    let data: [DoctorFindCategoryModel]
    
    let columns = Array(
        repeating: GridItem(.flexible(), spacing: 0),
        count: 4
    )
    
    let action: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("Find Doctor by Speciality")
                    .font(.system(size: 16, weight: .semibold))
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                Button(action: action) {
                    Text("View All")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(.appGreen)
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 30)
            
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data) { data in
                    DoctorFindCategoryView(action: {
                        //
                    }, data: data.cardData).frame(height: 122)
                }
            }
            .padding(.horizontal, 8)
        }
    }
}

#Preview {
    FindDoctorSectionView(data: DoctorFindCategoryData, action: {})
}
