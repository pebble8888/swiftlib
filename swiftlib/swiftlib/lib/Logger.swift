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
   
    class func debug(message:String, function: String = __FUNCTION__, line: Int = __LINE__) 
    { 
#if DEBUG
        let str:String = "\(function) line[\(line)] \(message)"
        NSLog(str)
#endif
    }
}
