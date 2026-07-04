//
//  DoctorsView.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import SwiftUI

struct DoctorsView: View {
    let doctor: [DoctorsModel]

    var body: some View {
        HStack(spacing: 0) {
            ForEach(doctor) { doctor in
                DoctorCardView(
                    action: { },
                    doctor: doctor
                )
                .frame(maxWidth: .infinity)
            }
        }
        .padding(.horizontal, 8)
    }
}

//struct DoctorsView: View {
//    let doctor: [DoctorsModel]
//    
//    var body: some View {
//        HStack(spacing: 0) {
//            ForEach(doctor) { doctor in
//                DoctorCardView(action: {
//                    //
//                }, doctor: doctor)
//            }
//        }
//    }
//}

#Preview {
    DoctorsView(doctor: doctorsData)
}
