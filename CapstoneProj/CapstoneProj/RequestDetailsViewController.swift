//
//  RequestDetailsViewController.swift
//  CapstoneProj
//
//  Created by Tim Mailman on 2022-03-14.
//

import UIKit
import MapKit

class RequestDetailsViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var lblInfo: UILabel!
    
    var svcReq : SvcReq?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let req = svcReq{
            mapView.showsUserLocation = true
            let ann = MKPointAnnotation()
            ann.coordinate = CLLocationCoordinate2D(latitude: req.svcLat, longitude: req.svcLng)
            mapView.addAnnotation(ann)
            mapView.showAnnotations(mapView.annotations, animated: true)
        }
        
        lblInfo.text = svcReq?.svcAddr
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func doBtnAccept(_ sender: Any) {
        guard let sId = svcReq?.id else { return }
        let input = UpdateSvcReqInput(id: sId, accept: true)
        
        let mut = UpdateSvcReqMutation(input: input)
        (UIApplication.shared.delegate as! AppDelegate).appSyncClient?.perform(mutation: mut, resultHandler: { (result, error) in
            print (error)
            print (result)
        })
    }
    
}
