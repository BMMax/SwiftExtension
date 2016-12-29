//
//  DateExtensionTests.swift
//  DateExtensionTests
//
//  Created by user on 16/12/29.
//  Copyright © 2016年 mobin. All rights reserved.
//

import XCTest
@testable import SwiftExtension


class DateExtensionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
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
    
    
    func testCalendar() {
        XCTAssert(Date().calendar == Calendar.current,"couldn't get correct value for \(#function)")
    }
    

    func testEra() {
        
        XCTAssert(Date().era == Calendar.current.component(.era, from: Date()), "Couldn't get correct value (\(Date().era)) for \(#function)")
    }
    
    func testAddDate() {
        
        var date = Date()
        date.add(.second, value: 10)
        
    }
    
    func testDateString() {
        let timeString =  Date().timeString(ofStyle: .full)
        
        print("------\(timeString)")

    }
}
