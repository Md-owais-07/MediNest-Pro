//
//  ProfileSectionRowModel.swift
//  MediNest Pro
//
//  Created by Owais on 7/29/26.
//

import SwiftUI

struct ProfileSectionRowModel: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let leadingIcon: String
}

let ProfileSectionRowData = [
    ProfileSectionRowModel(title: "Help", description: "FAQs, get help or raise a query", leadingIcon: "questionmark.circle"),
    ProfileSectionRowModel(title: "Medicine Orders", description: "Order history and transactions", leadingIcon: "pills"),
    ProfileSectionRowModel(title: "Lab Tests and Doctor Consults", description: "Order history and transactions", leadingIcon: "stethoscope"),
    ProfileSectionRowModel(title: "My Insurance Policies", description: "FAQs, get help or raise a query", leadingIcon: "shield"),
    
    // MORE ROWs
    ProfileSectionRowModel(title: "All Health Records", description: "Reports, Prescriptions, Bill & more", leadingIcon: "doc.badge.plus"),
    ProfileSectionRowModel(title: "MediNest SBI card SELECT", description: "Save 25% on medicines and more", leadingIcon: "creditcard.fill"),
    ProfileSectionRowModel(title: "Address Book", description: "Edit, add and manage your addresses", leadingIcon: "mappin.and.ellipse"),
    ProfileSectionRowModel(title: "Payment methods & Health Credits", description: "Link or add new cards and payment modes", leadingIcon: "creditcard"),
    ProfileSectionRowModel(title: "Circle and Corporate Memberships", description: "Unlock exclusive benefits with Memberships", leadingIcon: "crown"),
]
