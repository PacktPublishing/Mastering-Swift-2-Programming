//
//  ViewController.swift
//  ErrorHandling
//
//  Created by Dan Beaulieu on 12/28/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let digits = [Int]()
        let result = importantComputation(digits)
        
    }
    
    func importantComputation(numbers : [Int]) -> Int {
        
        precondition(numbers.count > 0 , "The value passed in was empty")
        fatalError()
        let sum = numbers.reduce(0, combine: +)
        return sum
        
    }
}

