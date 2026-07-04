//
//  MainBodyCheckupView.swift
//  MediNest Pro
//
//  Created by Owais on 6/28/26.
//

import SwiftUI

struct MainBodyCheckupView: View {
    var body: some View {
        VStack(spacing: 0) {
            BodyCheckupHeader()
            DoctorsView(doctor: doctorsData)
            BodyCheckupFooter()
        }
    }
}

#Preview {
    MainBodyCheckupView()
}
