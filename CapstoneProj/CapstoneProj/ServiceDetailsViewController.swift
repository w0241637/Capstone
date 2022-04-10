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
    var watcher : AWSAppSyncSubscriptionWatcher<OnUpdateSvcReqSubscription>?
    var annotation = MKPointAnnotation()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let user = appUser{
            mapView.showsUserLocation = true

            
            annotation.coordinate = CLLocationCoordinate2D(latitude: user.locLat, longitude: user.locLng)
            mapView.addAnnotation(annotation)
            mapView.showAnnotations(mapView.annotations, animated: true)
        }
        
        lblName.text = appUser?.userName ?? "(No Name)"
    }
    
// create mutation to SvcReq table set service request
    @IBAction func doBtnServ(_ sender: Any) {
        
        guard let userLoc = ViewController.userLoc else {return}
        
        CLGeocoder().reverseGeocodeLocation(userLoc) { (placemarks, error) in
            guard error == nil else {return}
            
            guard let pm = placemarks?.first else {return}
            
            let addrFormatter = CNPostalAddressFormatter()
            addrFormatter.style = .mailingAddress
            guard let pa =  pm.postalAddress else {return}
            let addr = addrFormatter.string(from:pa)
            
            let input = CreateSvcReqInput.init(custUName: AWSMobileClient.sharedInstance().username ?? "no cust name", provUName: self.appUser?.userName ?? "no prov name", svcLat: userLoc.coordinate.latitude, svcLng: userLoc.coordinate.longitude, svcAddr: addr, accept: false, driverLat: 0.0, driverLng: 0.0)

//            when creating service request  get values
            let mut = CreateSvcReqMutation(input: input)
            (UIApplication.shared.delegate as! AppDelegate).appSyncClient?.perform(mutation: mut, resultHandler:{
                (result, error) in
                print (error?.localizedDescription)
                print (result)
                
//                start subscription
                self.startSub()
            })
            
            
        }

        

    }
    //        when user creats service, subscribe to it to get updates from driver
            func startSub(){
                watcher = try? (UIApplication.shared.delegate as! AppDelegate).appSyncClient?.subscribe(subscription: OnUpdateSvcReqSubscription(), resultHandler: { (result, trans, error) in
                    guard let result = result else {return}
                    guard let updatedSR = result.data?.onUpdateSvcReq else {return}
                    let lat = updatedSR.driverLat ?? 0.0
                    let lng = updatedSR.driverLng ?? 0.0
                    DispatchQueue.main.async {
                        self.annotation.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lng)
                        }
                    })
            }
}
