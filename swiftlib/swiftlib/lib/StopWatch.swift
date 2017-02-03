//
//  StopWatch.swift
//  swiftlib
//
//  Created by pebble8888 on 2015/09/21.
//  Copyright (c) 2015-2017 pebble8888. All rights reserved.
//

import Foundation

@objc public class StopWatch : NSObject {
    private var _start:Date!
    private var _elapsed:TimeInterval = 0.0
    
    override init()
    {
        super.init()
        _start = Date()
    }
    
    public func start()
    {
        _start = Date()
    }
    
    public func stop()
    {
        _elapsed = Date().timeIntervalSince(_start)
    }
    
    override public var description: String
    {
        let val:Int = Int(_elapsed * 1_000_000)
        return "\(val) us"
    }
    
}
