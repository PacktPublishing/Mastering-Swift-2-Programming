//
//  ViewController.swift
//  breakpoints
//
//  Created by Dan Beaulieu on 12/27/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        breakpointTest()
    }

    func breakpointTest() {
        var val = 0
        
        for index in 0...1000 {
            val = index
            //print("value is \(val)")
            if val == 950 {
                do {
                    try someFunction()
                } catch let ex {
                    print(ex)
                }
            }
        }
    }
    
    func someFunction() throws {
        
       buffer()
   
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

