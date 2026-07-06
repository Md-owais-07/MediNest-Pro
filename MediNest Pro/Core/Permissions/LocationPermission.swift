//
//  LocationPermission.swift
//  MediNest Pro
//
//  Created by Owais on 7/5/26.
//

import CoreLocation

enum LocationPermission {
    
    static func isAuthorized(_ status: CLAuthorizationStatus) -> Bool {
        status == .authorizedAlways ||  status == .authorizedWhenInUse
    }
}
