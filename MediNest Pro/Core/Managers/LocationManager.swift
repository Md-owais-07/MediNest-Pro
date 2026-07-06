//
//  LocationManager.swift
//  MediNest Pro
//
//  Created by Owais on 7/5/26.
//

import SwiftUI
import CoreLocation
internal import Combine

class LocationManager: NSObject, ObservableObject {
    
    @Published var currentLocation: UserLocation?
    @Published var authorizationStatus: CLAuthorizationStatus = .notDetermined
    
    private let manager = CLLocationManager()
    private let geocoder = CLGeocoder()
    
    override init() {
        super.init()
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    // MARK: - Permission
    func requestPermission() {
        manager.requestWhenInUseAuthorization()
    }
    
    // MARK: - Fetch Location
    func fetchCurrentLocation() {
        manager.requestLocation()
        print("Location requested")
    }
    
}


extension LocationManager: CLLocationManagerDelegate {

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        authorizationStatus = manager.authorizationStatus
        guard LocationPermission.isAuthorized(manager.authorizationStatus)
        else { return }
        fetchCurrentLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        geocoder.reverseGeocodeLocation(location) { [weak self] placemarks, error in

            guard let self, error == nil, let place = placemarks?.first else { return }

            DispatchQueue.main.async {
                self.currentLocation = UserLocation(
                    latitude: location.coordinate.latitude,
                    longitude: location.coordinate.longitude,
                    city: place.locality ?? "",
                    state: place.administrativeArea ?? "",
                    country: place.country ?? "",
                    postalCode: place.postalCode ?? "",
                    locality: place.subLocality ?? ""
                )
            }
        }
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
}
