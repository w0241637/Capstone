//
//  CapstoneProjTestsSvcReq.swift
//  CapstoneProjTests
//
//  Created by Tim Mailman on 2022-04-10.
//

import XCTest
@testable import CapstoneProj

class CapstoneProjTestsSvcReq: XCTestCase {
    
    var sut: SvcReq!
    
    override func setUpWithError() throws{
        try super.setUpWithError()
        sut = SvcReq()
    }


    //        var id = ""
    func test_SvcReqId01(){
        sut?.id = "abc123"
        let answer: (String)? = sut?.id
        XCTAssertEqual(answer, "abc123")
    }
    
    func test_SvcReqId02(){
        sut?.id = "abc123"
        let answer: (String)? = sut?.id
        XCTAssertNotEqual(answer, "123abc")
    }

    //        var custUName: String = ""
    func test_SvcReqcustUName01(){
        sut?.custUName = "tim"
        let answer: (String)? = sut?.custUName
        XCTAssertEqual(answer, "tim")
    }
    
    func test_SvcReqcustUName02(){
        sut?.custUName = "tom"
        let answer: (String)? = sut?.custUName
        XCTAssertNotEqual(answer, "tim")
    }
    
    //        var provUName: String = ""
    func test_SvcReqprovUName01(){
        sut?.custUName = "tim"
        let answer: (String)? = sut?.custUName
        XCTAssertEqual(answer, "tim")
    }
    
    func test_SvcReqprovUName02(){
        sut?.custUName = "tom"
        let answer: (String)? = sut?.custUName
        XCTAssertNotEqual(answer, "tim")
    }
    
    //        var svcLat = 0.0
    func test_SvcReqsvcLat01(){
        sut?.svcLat = 45.00
        let answer: (Double)? = sut?.svcLat
        XCTAssertEqual(answer, 45.00)
    }
    
    func test_SvcReqLocLat02(){
        sut?.svcLat = 45.00
        let answer: (Double)? = sut?.svcLat
        XCTAssertNotEqual(answer, 45.01)
    }
    
    //        var svcLng = 0.0
    func test_SvcReqsvcLng01(){
        sut?.svcLng = 45.00
        let answer: (Double)? = sut?.svcLng
        XCTAssertEqual(answer, 45.00)
    }
    
    func test_SvcReqsvcLng02(){
        sut?.svcLng = 45.00
        let answer: (Double)? = sut?.svcLng
        XCTAssertNotEqual(answer, 45.01)
    }
    
    //        var svcAddr: String = ""
    func test_SvcReqsvcAddr01(){
        sut?.svcAddr = "123 Fake st."
        let answer: (String)? = sut?.svcAddr
        XCTAssertEqual(answer, "123 Fake st.")
    }
    
    func test_SvcResvcAddr02(){
        sut?.svcAddr = "123 Fake st."
        let answer: (String)? = sut?.svcAddr
        XCTAssertNotEqual(answer, "123 Fake ave.")
    }
    
    //        var accept = false
    func test_SvcReqaccept01(){
        sut?.accept = false
        let answer: (Bool)? = sut?.accept
        XCTAssertEqual(answer, false)
    }
    
    func test_SvcReaccept02(){
        sut?.accept = false
        let answer: (Bool)? = sut?.accept
        XCTAssertNotEqual(answer, true)
    }
    
    //        var driverLat = 0.0
    func test_SvcReqdriverLat01(){
        sut?.driverLat = 45.00
        let answer: (Double)? = sut?.driverLat
        XCTAssertEqual(answer, 45.00)
    }
    
    func test_SvcReqdriverLat02(){
        sut?.driverLat = 45.00
        let answer: (Double)? = sut?.driverLat
        XCTAssertNotEqual(answer, 44.00)
    }
    
    //        var driverLng = 0.0
    func test_SvcReqdriverLng01(){
        sut?.driverLng = -65.00
        let answer: (Double)? = sut?.driverLng
        XCTAssertEqual(answer, -65.00)
    }
    
    func test_SvcReqdriverLng02(){
        sut?.driverLng = -65.00
        let answer: (Double)? = sut?.driverLng
        XCTAssertNotEqual(answer, 65.00)
    }
}
