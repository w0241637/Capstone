//
//  CapstoneProjTestsAppUser.swift
//  CapstoneProjTestsAppUser
//
//  Created by Tim Mailman on 2022-02-13.
//

import XCTest
@testable import CapstoneProj

class CapstoneProjTests: XCTestCase {
    
    var sut: AppUser!
    
    override func setUpWithError() throws{
        try super.setUpWithError()
        sut = AppUser()
    }


    func test_AppUserUserName01(){
        sut?.userName = "tim"
        let answer: (String)? = sut?.userName
        XCTAssertEqual(answer, "tim")
    }
    
    func test_AppUserUserName02(){
        sut?.userName = "tom"
        let answer: (String)? = sut?.userName
//        XCTAssertEqual(answer, "tim")
        XCTAssertNotEqual(answer, "tim")
    }
    
    func test_AppUserLocLat(){
        sut?.locLat = 45.00
        let answer: (Double)? = sut?.locLat
        XCTAssertEqual(answer, 45.00)
    }
    
    func test_AppUserLocLng(){
        sut?.locLng = -64.44
        let answer: (Double)? = sut?.locLng
        XCTAssertNotEqual(answer, -64.45)
    }
    
    func test_AppUserId(){
        sut?.id = "abc123"
        let answer: (String)? = sut?.id
        XCTAssertEqual(answer, "abc123")
    }
    
}
