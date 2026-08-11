//
//  AppRoute.swift
//  MediNest Pro
//
//  Created by Owais on 8/2/26.
//

import SwiftUI

enum AppRoute: Hashable {
    case auth(AuthRoute)
    case homeTab(HomeRoute)
    case pharmacyTab(PharmacyRoute)
    case labTab(LabTestsRoute)
    case doctorTab(DoctorsRoute)
    case insurancetab(InsuranceRoute)
    case healthTab(MyHealthRoute)
}
