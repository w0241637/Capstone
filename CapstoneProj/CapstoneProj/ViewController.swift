//
//  ViewController.swift
//  CapstoneProj
//
//  Created by Tim Mailman on 2022-02-13.
//

/*
 AWSMobile Client Documentation
 https://aws-amplify.github.io/aws-sdk-ios/docs/reference/AWSMobileClient/index.html
 */

import UIKit
import AWSMobileClient
import AWSAppSync

class ViewController: UITableViewController {
    
    var appSyncClient: AWSAppSyncClient?
    var users = [AppUser]()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellUser", for: indexPath)
        
        let user = users[indexPath.row]
        cell.textLabel?.text = user.userName
        cell.detailTextLabel?.text = "\(user.locLat) \(user.locLng)"
        
        return cell
    }

    //called when UI loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        appSyncClient = (UIApplication.shared.delegate as! AppDelegate).appSyncClient
        
        //additional setup after loading the view.
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
                                print("result: \(result) error:\(error)")
                                print(result)
                                print(error)
                                self.fetchUsers()
                            })
                            
                        }
                    })
                }
                else{
                    self.fetchUsers()
                    AWSMobileClient.sharedInstance().signOut()
                }
            }
        }
    }
    
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
    
    
    // this doesnt work yet
    func fetchSvcReqs(){
        let q = ListSvcReqsQuery()
        
//
//        let filterInput = ModelStringInput(ne: AWSMobileClient.sharedInstance().username)
//
//        let filter = ModelAppUserFilterInput(userName:filterInput)
//        q.filter = filter
//
        appSyncClient?.fetch(query: q, cachePolicy: .fetchIgnoringCacheData, resultHandler: {(results, error) in
            guard error == nil else {return}
            print (results?.data?.listSvcReqs?.items ?? "no users")
        })
    }


}


