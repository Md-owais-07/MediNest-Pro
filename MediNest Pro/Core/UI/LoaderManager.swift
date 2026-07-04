//
//  LoaderManager.swift
//  MediNest Pro
//
//  Created by Owais on 6/21/26.
//

import SwiftUI
internal import Combine

@MainActor
final class LoaderManager: ObservableObject {
    
    @Published var isLoading: Bool = false
    @Published var message: String?
    
    func show(_ message: String? = nil) {
        self.message = message
        self.isLoading = true
    }
    
    func hide() {
        self.isLoading = false
        self.message = nil
    }
}
