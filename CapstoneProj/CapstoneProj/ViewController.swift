//
//  ViewController.swift
//  CapstoneProj
//
//  Created by Tim Mailman on 2022-02-13.
//

<<<<<<< HEAD
import UIKit
import AWSMobileClient
import AWSAppSync
=======
/*
 AWSMobile Client Documentation
 https://aws-amplify.github.io/aws-sdk-ios/docs/reference/AWSMobileClient/index.html
 
 apple timer Documentation
 https://developer.apple.com/documentation/foundation/timer/1415941-scheduledtimer
 */


import UIKit
import AWSMobileClient
import AWSAppSync
import CoreLocation
>>>>>>> develop

class ViewController: UITableViewController {
    
    var appSyncClient: AWSAppSyncClient?
<<<<<<< HEAD

    override func viewDidLoad() {
        super.viewDidLoad()
=======
    var users = [AppUser]()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellUser", for: indexPath)
        
        let user = users[indexPath.row]
        cell.textLabel?.text = user.userName
        
        
        let cellLoc = CLLocation(latitude: user.locLat, longitude: user.locLng)
        var msg = "error, unknown location"
        if let uLoc = ViewController.userLoc {
            let dist = uLoc.distance(from: cellLoc)
            msg = "\(dist) meters?"
        }
        
//        cell.detailTextLabel?.text = "\(user.locLat) \(user.locLng)"
        cell.detailTextLabel?.text = msg
        
        return cell
    }

    //called when UI loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        self.startLocationUpdates()
        
        
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true){(t) in
        if ViewController.userLoc != nil {
            t.invalidate()
            self.tableView.reloadData()
        }
            
        }
//        Timer.scheduledTimer(withTimeInterval: 3.0, target: <#T##Any#>, repeats: true) { (t) in
//            if ViewController.userLoc != nil {
//                t.invalidate()
//                self.tableView.reloadData()
//            }
//        }
>>>>>>> develop
        
        
        appSyncClient = (UIApplication.shared.delegate as! AppDelegate).appSyncClient
        
<<<<<<< HEAD
        // Do any additional setup after loading the view.
=======
        //additional setup after loading the view.
>>>>>>> develop
        AWSMobileClient.sharedInstance().initialize { (userState, error) in
            if let uState = userState {
                if uState == .signedOut {
                    AWSMobileClient.sharedInstance().showSignIn(navigationController: self.navigationController!, { (uState2, error) in
                        print (uState2 ?? "none")
                        print (error?.localizedDescription ?? "no error")
                        if let state = uState2, state == .signedIn {
                            let input = CreateAppUserInput.init(userName: AWSMobileClient.sharedInstance().username ?? "Error", locLat: 0.0, locLng: 0.0)
                            let mut = CreateAppUserMutation(input: input)
                            self.appSyncClient?.perform(mutation: mut, resultHandler: {
                                (result, error) in
<<<<<<< HEAD
                                print(result)
                                print(error)
=======
                                print("result: \(result) error:\(error)")
                                print(result)
                                print(error)
                                self.fetchUsers()
>>>>>>> develop
                            })
                            
                        }
                    })
                }
                else{
<<<<<<< HEAD
                    AWSMobileClient.sharedInstance().signOut()
=======
                    self.fetchUsers()
//                    AWSMobileClient.sharedInstance().signOut()
>>>>>>> develop
                }
            }
        }
    }
<<<<<<< HEAD


}

=======
    
    //method to get users from list of all users
    func fetchUsers(){
        
        //filter out current user
        let q = ListAppUsersQuery()
//        let filterInput03 = ModelAppUserFilterInput(ne: AWSMobileClient.sharedInstance().username)
//        let filterInput02 = ModelAppUserFilterInput(!=: AWSMobileClient.sharedInstance().username)
//        let filterInput04 = ModelStringInput(!=: AWSMobileClient.sharedInstance().username)
        let filterInput = ModelStringInput(ne: AWSMobileClient.sharedInstance().username)
        let filter = ModelAppUserFilterInput(userName:filterInput)
        q.filter = filter
        
// query list of users
        appSyncClient?.fetch(query: q, cachePolicy: .fetchIgnoringCacheData, resultHandler: { (results, error) in

            guard error == nil else {return}
            print("### results data listAppUsers items: \(results?.data?.listAppUsers?.items)")
            print (results?.data?.listAppUsers?.items ?? "no users")
            
            // get itesm as array
            // .data is from API.swift
            if let items = results?.data?.listAppUsers?.jsonObject["items"] as? [[String:Any?]] {
                items.forEach({ (dict) in
                    guard let json = try? JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted) else { return }
                    guard let user = try? JSONDecoder().decode(AppUser.self, from:json) else {return}
                    self.users.append(user)
                    self.tableView.reloadData()
                })
            }
        })
    }
    
    
//    func fetchSvcReqs(){
//        let q = ListSvcReqsQuery()
//
////
////        let filterInput = ModelStringInput(ne: AWSMobileClient.sharedInstance().username)
////
////        let filter = ModelAppUserFilterInput(userName:filterInput)
////        q.filter = filter
////
//        appSyncClient?.fetch(query: q, cachePolicy: .fetchIgnoringCacheData, resultHandler: {(results, error) in
//            guard error == nil else {return}
//            print (results?.data?.listSvcReqs?.items ?? "no users")
//        })
//    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ServiceDetailsViewController {
            if let row = tableView.indexPathForSelectedRow?.row {
                let user = self.users[row]
                vc.appUser = user
            }
        }
    }
    
}


>>>>>>> develop
