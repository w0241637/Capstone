//
//  ViewController.swift
//  TestingApp2
//
//  Created by Tim Mailman on 2022-01-23.
//


import UIKit
import AWSMobileClient
import AWSAppSync

class ViewController: UITableViewController {

    var appSyncClient : AWSAppSyncClient?
    var testgraphqlid : GraphQLID? = "asdf"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appSyncClient = (UIApplication.shared.delegate as! AppDelegate).appSyncClient
        // Do any additional setup after loading the view.
        //initilizing aws (it's a singleton pattern btw)
        AWSMobileClient.sharedInstance().initialize { (userState, error) in
            if let uState = userState {
                if uState == .signedOut {
                    AWSMobileClient.sharedInstance().showSignIn(navigationController: self.navigationController!, { uState2, error in
                        print(uState2 ?? "none")
                        print (error?.localizedDescription ?? " no error")
                        if let state = uState2, state == .signedIn {
                            let input = CreateAppUserInput.init(userName: AWSMobileClient.sharedInstance().username ?? "error", locLat: 0.0, locLng: 0.0)
                            
                            let input02 = CreateAppUserInput.init(id: self.testgraphqlid, userName: "test", locLat: 0.0, locLng: 0.0)
                            
                            let mut = CreateAppUserMutation(input: input)
                            
                            self.appSyncClient?.perform(mutation: mut, resultHandler: {
                                (result, error) in
                                print("######## Results :")
                                print (result)
                                print("######## Error :")
                                print (error)
                            })
                        }
                    })
                }
                else {
                    AWSMobileClient.sharedInstance().signOut()
                }
            }
        }
    }


}

