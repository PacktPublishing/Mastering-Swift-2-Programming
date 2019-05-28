//
//  Driver.swift
//  MemoryManagement
//
//  Created by Dan Beaulieu on 12/5/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//

import Foundation


class Driver {
    
    let name: String
    var vehicle: Vehicle?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("driver \(name) is being deallocated")
    }

}