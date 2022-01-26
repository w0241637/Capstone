//
//  ViewController.swift
//  TestingApp2
//
//  Created by Tim Mailman on 2022-01-23.
//


import UIKit
import AWSMobileClient

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //initilizing aws (it's a singleton pattern btw)
        AWSMobileClient.sharedInstance().initialize { (userState, error) in
            if let uState = userState{
                if uState == .signedOut {
                    AWSMobileClient.sharedInstance().showSignIn(navigationController: self.navigationController!) { uState2, error in
                        print(uState2 ?? "none")
                        print (error?.localizedDescription ?? " no error")
                    }
                }
            }
        }
    }


}

