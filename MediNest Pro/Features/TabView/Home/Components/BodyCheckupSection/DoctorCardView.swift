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

                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(AppColors.textGray.opacity(0.4))
                    .padding(.top, 20)
                    .frame(width: 80, height: 80)
                    .background(
                        Circle()
                            .fill(AppColors.textGray.opacity(0.2))
                    )
                    .clipShape(.circle)

                VStack(spacing: 2) {
                    Text(doctor.gender)
                    Text("(\(doctor.experience))")
                }
                .font(.system(size: 15, weight: .medium))
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
