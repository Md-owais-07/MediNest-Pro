//
//  AppUser.swift
//  MediNest Pro
//
//  Created by Owais on 6/20/26.
//

import Foundation

struct AppUser: Codable {
    let id: String
    let fullName: String
    let email: String
    let createdAt: Date
}
