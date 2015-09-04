//
//  IsNearlyZero.swift
//  swiftlib
//
//  Created by pebble8888 on 2015/09/05.
//  Copyright (c) 2015 pebble8888. All rights reserved.
//

import Foundation

extension Float 
{
    func IsNearlyZero() -> Bool {
        return fabs(self) < 0.000001
    }
}
