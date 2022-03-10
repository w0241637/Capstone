//
//  ServiceDetailsViewController.swift
//  CapstoneProj
//
//  Created by Tim Mailman on 2022-03-01.
//

import UIKit
import MapKit
import CoreLocation
import AWSMobileClient
import AWSAppSync
import Contacts

class ServiceDetailsViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    var appUser : AppUser?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let user = appUser{
            mapView.showsUserLocation = true
            let ann = MKPointAnnotation()
            ann.coordinate = CLLocationCoordinate2D(latitude: user.locLat, longitude: user.locLng)
            mapView.addAnnotation(ann)
            mapView.showAnnotations(mapView.annotations, animated: true)
        }
        
        lblName.text = appUser?.userName ?? "(No Name)"
    }
    
// create mutation to SvcReq table set service request
    @IBAction func doBtnServ(_ sender: Any) {
        
        guard let userLoc = ViewController.userLoc else {return}
        
        CLGeocoder().reverseGeocodeLocation(userLoc){(placemarks, error)in
            guard error == nil else {return}
            
            guard let pm = placemarks?.first else {return}
            
            let addrFormatter = CNPostalAddressFormatter()
            addrFormatter.style = .mailingAddress
            guard let pa =  pm.postalAddress else {return}
            let addr = addrFormatter.string(from:pa)
            
            let input = CreateSvcReqInput.init(custUName: AWSMobileClient.sharedInstance().username ?? "no cust name", provUName: self.appUser?.userName ?? "no prov name", svcLat: userLoc.coordinate.latitude, svcLng: userLoc.coordinate.longitude, svcAddr: addr)
            let mut = CreateSvcReqMutation(input: input)
            (UIApplication.shared.delegate as! AppDelegate).appSyncClient?.perform(mutation: mut, resultHandler:{
                (result, error) in
                print (error?.localizedDescription)
                print (result)
            })
            
            
        }
        
//        let input = CreateSvcReqInput.init(custUName: AWSMobileClient.sharedInstance().username ?? "no cust name", provUName: appUser?.userName ?? "no prov name", svcLat: userLoc.coordinate.latitude, svcLng: userLoc.coordinate.longitude, svcAddr: addr)
    }
}
