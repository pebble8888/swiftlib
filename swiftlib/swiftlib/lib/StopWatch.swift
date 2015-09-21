//
//  StopWatch.swift
//  swiftlib
//
//  Created by pebble8888 on 2015/09/21.
//  Copyright (c) 2015 pebble8888. All rights reserved.
//

import Foundation

class StopWatch {
    // start stopwatch at initialize
    init(){
        _start = NSDate()
    }
    // stop stopwatch and debug print elapsed time
    func stop(function: String = __FUNCTION__, line: Int = __LINE__){
        let elapsed = NSDate().timeIntervalSinceDate(_start)
        Logger.debug("\(elapsed)", function:function, line:line)
    }
    private var _start:NSDate!
}
