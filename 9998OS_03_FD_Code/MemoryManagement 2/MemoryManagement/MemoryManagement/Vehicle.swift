//
//  Vehicle.swift
//  MemoryManagement
//
//  Created by Dan Beaulieu on 12/5/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//

import Foundation


class Vehicle {
    let type: String
    
    init(kind: String) {
        self.type = kind
        print("\(type) is being initialized")
    }
    
    deinit {
        print("\(type) is being deinitialized")
    }
}