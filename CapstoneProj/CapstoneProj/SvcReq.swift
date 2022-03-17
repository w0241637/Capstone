//
//  SvcReq.swift
//  CapstoneProj
//
//  Created by Tim Mailman on 2022-03-14.
//

import Foundation

class SvcReq : Codable {
    var id = ""
    var custUName: String = ""
    var provUName: String = ""
    var svcLat = 0.0
    var svcLng = 0.0
    var svcAddr: String = ""
}
