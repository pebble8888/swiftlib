//
//  swiftlibtest.swift
//  swiftlibtest
//
//  Created by pebble8888 on 2015/09/05.
//  Copyright (c) 2015年 pebble8888. All rights reserved.
//

import Cocoa
import XCTest

class swiftlibtest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testLogger() {
        Logger.debug("abc")
        usleep(2000)
        Logger.debug("def");
        Logger.debug("ghi");
    }
    
    func testIsNearlyZero() {
        let val1:Float = 0.0000001
        let val2:Float = 0.000001
        XCTAssert( val1.IsNearlyZero() );
        XCTAssert( !val2.IsNearlyZero() );
    }
    
}
