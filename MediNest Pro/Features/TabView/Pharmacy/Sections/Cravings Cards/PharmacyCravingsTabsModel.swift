//
//  PharmacyCravingsTabsModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/11/26.
//

import SwiftUI

enum PharmacyCravingsTabsModel: String, Identifiable {
    case breakfast
    case herbal
    case healthy
    
    var id: String { rawValue }
}
