//
//  DoctorTabView.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

struct DoctorTabView: View {
    @EnvironmentObject private var presentation: PresentationManager
    
    @State private var textField: String = ""
    
    var body: some View {
        
        ZStack(alignment: .top) {
            TopSafeAreaOnly(bgColor: .doctor)
            
            VStack(spacing: 0) {
                DoctorHeaderView(locationAction: {
                    withAnimation(.spring()) {
                        presentation.showLocationSheet = true
                    }
                })
                
                ScrollView(showsIndicators: false) {
                    //MARK: START SCROLL CONTENTS
                    DoctorTopCardSection(items: DoctorTopCardData)
                    DoctorInstantSection(action: {}, leftIcon: "doctor", secondIcon: "electric", title: "Instant Doctor Consult", subTitle: "Connect in under 5 seconds", rightIcon: "chevron.right")
                    FindDoctorSectionView(data: DoctorFindCategoryData, action: {})
                    ExpertGuidanceView(
                        action: {},
                        textFieldAction: {},
                        textField: $textField
                    )
                    DoctorAppointmentSection(action: {})
                    
                    ScrollOffsetReader()
                    
                    Rectangle()
                        .foregroundStyle(.white)
                        .frame(height: 100)
                }
                .trackScrollDirection()
            }
        }
    }
}

#Preview {
    DoctorTabView()
        .environmentObject(PresentationManager())
        .environmentObject(LocationManager())
}
