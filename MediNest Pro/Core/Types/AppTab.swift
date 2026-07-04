//
//  AppTab.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import SwiftUI

enum AppTab: String, CaseIterable, Identifiable {
    case home
    case pharmacy
    case labTests
    case doctors
    case insurance
    case myHealth
    
    var id: String { rawValue }
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .pharmacy: return "Pharmacy"
        case .labTests: return "Lab Tests"
        case .doctors: return "Doctors"
        case .insurance: return "Insurance"
        case .myHealth: return "My Health"
        }
    }
    
    var icon: String {
        switch self {
        case .home: return "house"
        case .pharmacy: return "pills"
        case .labTests: return "testtube.2"
        case .doctors: return "stethoscope"
        case .insurance: return "shield"
        case .myHealth: return "cross.case"
        }
    }
    
    var selectedIcon: String {
        switch self {
        case .home: return "house.fill"
        case .pharmacy: return "pills.fill"
        case .labTests: return "testtube.2"
        case .doctors: return "stethoscope"
        case .insurance: return "shield.fill"
        case .myHealth: return "cross.case.fill"
        }
    }
    
    var selectedColor: Color {
        switch self {
        case .home:
            return .primaryButton
        case .pharmacy:
            return .pharmacy
        case .labTests:
            return .labDark
        case .doctors:
            return .doctorDark
        case .insurance:
            return .insuranceDark
        case .myHealth:
            return .healthDark
        }
    }
}
