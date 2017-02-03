//
//  Logger.swift
//  swiftlib
//
//  Created by pebble8888 on 2015/09/05.
//  Copyright (c) 2015 pebble8888. All rights reserved.
//

import Foundation

class Logger {
    init()
    {
    }
   
    class func debug(_ message:String, function: String = #function, line: Int = #line) 
    { 
#if DEBUG
        let str:String = "\(function) line[\(line)] \(message)"
        NSLog(str)
#endif
    }
}
