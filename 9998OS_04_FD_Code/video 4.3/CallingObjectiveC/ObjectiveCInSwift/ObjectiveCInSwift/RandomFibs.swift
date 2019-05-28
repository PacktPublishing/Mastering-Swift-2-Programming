//
//  Fib.swift
//  ObjectiveCInSwift
//
//  Created by Dan Beaulieu on 12/11/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//

import Foundation

class RandomFibs : Fibonacci, SequenceType {

    var count = 0
    var numberOfFibs : Int
    
    init(fibQty: Int) {
        numberOfFibs = fibQty
        super.init()
    }
    
    func generate() -> AnyGenerator<Int32> {
        
        return anyGenerator {
            guard self.count < self.numberOfFibs else {
                return nil
            }
            
            self.count++
            let random = Int32(arc4random_uniform(100))
            return self.fib(random)
        }
    }
}