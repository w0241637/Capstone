//
//  VCExt.swift
//  CapstoneProj
//
//  Created by Tim Mailman on 2022-02-26.
//

// https://developer.apple.com/documentation/corelocation
//

import Foundation
import CoreLocation


extension ViewController : CLLocationManagerDelegate{
    static let locMgr = CLLocationManager()
    static var userLoc : CLLocation?
    
//    set location manager and request auth
    func startLocationUpdates() {
        
        // return bool if location services not on
//        CLLocationManager.locationServicesEnabled()
        
        ViewController.locMgr.delegate = self
        ViewController.locMgr.requestWhenInUseAuthorization()
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            // within 100 meters
            ViewController.locMgr.distanceFilter = 100
            ViewController.locMgr.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            ViewController.locMgr.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        most recent in array of locations
        ViewController.userLoc = locations.last
    }
    
}
