//
//  LabBodyCheckupView.swift
//  MediNest Pro
//
//  Created by Owais on 7/11/26.
//

import SwiftUI

struct LabBodyCheckupView: View {
    var body: some View {
        VStack(spacing: 0) {
            BodyCheckupHeader()
            DoctorsView(doctor: doctorsData)
        }
    }
}

#Preview {
    LabBodyCheckupView()
}
