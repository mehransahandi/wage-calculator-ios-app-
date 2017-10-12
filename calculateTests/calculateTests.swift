//
//  calculateTests.swift
//  calculateTests
//
//  Created by Mehran Sahandi on 12.10.2017.
//  Copyright © 2017 Mehran Sahandi. All rights reserved.
//

import XCTest

class calculateTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testwage () {
        
        XCTAssert(wage.gethourse(forwage: 25, andprice: 100)==4)
         XCTAssert(wage.gethourse(forwage: 15.50, andprice: 250.53)==17)
        
    }
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
