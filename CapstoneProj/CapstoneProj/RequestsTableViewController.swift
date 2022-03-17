//
//  RequestsTableViewController.swift
//  CapstoneProj
//
//  Created by Tim Mailman on 2022-03-14.
//


import UIKit
import AWSMobileClient
import AWSAppSync
import CoreLocation

class RequestsTableViewController: UITableViewController {

    var appSyncClient: AWSAppSyncClient?
    var requests = [SvcReq]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true){(t) in
        if ViewController.userLoc != nil {
            t.invalidate()
            self.tableView.reloadData()
        }
            
        }
        appSyncClient = (UIApplication.shared.delegate as! AppDelegate).appSyncClient
fetchSvcReqs()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

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
            print (results?.data?.listSvcReqs?.items ?? "no requests")
            // get itesm as array
            // .data is from API.swift
            if let items = results?.data?.listSvcReqs?.jsonObject["items"] as? [[String:Any?]] {
                items.forEach({ (dict) in
                    guard let json = try? JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted) else { return }
                    guard let user = try? JSONDecoder().decode(SvcReq.self, from:json) else {return}
                    self.requests.append(user)
                    self.tableView.reloadData()
                })
            }
        })
    }
    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return requests.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReq", for: indexPath)

        // Configure the cell...
        let req = requests[indexPath.row]
        cell.textLabel?.text = req.custUName
        cell.detailTextLabel?.text = req.svcAddr

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? RequestDetailsViewController {
            if let row = tableView.indexPathForSelectedRow?.row {
                let req = self.requests[row]
                vc.svcReq = req
            }
        }
    }
}
