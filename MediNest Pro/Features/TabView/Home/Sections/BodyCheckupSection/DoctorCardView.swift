//
//  DoctorCardView.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import SwiftUI

struct DoctorCardView: View {
    let action: (() -> Void)
    let doctor: DoctorsModel

    var body: some View {
        Button(action: action) {
            VStack(spacing: 12) {

                Image(doctor.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundStyle(AppColors.textGray.opacity(0.4))
                    .padding(.top, 10)
                    .frame(width: 75, height: 75)
                    .background(
                        Circle()
                            .fill(.lab)
                    )
                    .clipShape(.circle)

                VStack(spacing: 2) {
                    Text(doctor.gender)
                    Text("(\(doctor.experience))")
                }
                .font(.system(size: 13, weight: .medium))
                .foregroundStyle(.black)
                .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    DoctorCardView(action: {}, doctor: doctorsData[0])
}
