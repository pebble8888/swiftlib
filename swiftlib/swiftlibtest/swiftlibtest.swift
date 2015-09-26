//
//  swiftlibtest.swift
//  swiftlibtest
//
//  Created by pebble8888 on 2015/09/05.
//  Copyright (c) 2015年 pebble8888. All rights reserved.
//

import Cocoa
import XCTest
import Accelerate

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
    
    func testStopWatch() {
        var buf:[Float] = Array<Float>(count: 4096, repeatedValue: 3)
        var sw:StopWatch = StopWatch();
        sw.start()
        for j in 0 ..< 10000 {
            //for i in 0 ..< 4096 {
                //buf[i] *= 1023
                var val:Float = 1023
                vDSP_vsmul(&buf, 1, &val, &buf, 1, 4096)
            //}
        }
        sw.stop()
    }
    
}
