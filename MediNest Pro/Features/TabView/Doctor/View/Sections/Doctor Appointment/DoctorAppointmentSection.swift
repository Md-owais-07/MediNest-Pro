//
//  DoctorAppointmentSection.swift
//  MediNest Pro
//
//  Created by Owais on 7/25/26.
//

import SwiftUI

struct DoctorAppointmentSection: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(alignment: .center, spacing: 8) {
                Image(systemName: "phone.fill")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(.doctorDark)
                
                Text("Call to book appointment")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(.black)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundStyle(.black)
            }
            .padding(.horizontal, 18)
            .frame(height: 55)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(.doctor.opacity(0.5))
            )
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    DoctorAppointmentSection(action: {})
}
