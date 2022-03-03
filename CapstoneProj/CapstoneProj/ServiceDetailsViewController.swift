//
//  ServiceDetailsViewController.swift
//  CapstoneProj
//
//  Created by Tim Mailman on 2022-03-01.
//

import UIKit
import MapKit
import CoreLocation

class ServiceDetailsViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    var appUser : AppUser?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let user = appUser{
            let ann = MKPointAnnotation()
            ann.coordinate = CLLocationCoordinate2D(latitude: user.locLat, longitude: user.locLng)
            mapView.addAnnotation(ann)
            mapView.showAnnotations(mapView.annotations, animated: true)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func doBtnServ(_ sender: Any) {
    }
}
