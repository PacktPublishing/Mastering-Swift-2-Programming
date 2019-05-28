//
//  ViewController.swift
//  MemoryManagement
//
//  Created by Dan Beaulieu on 12/5/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /* Step 1
    var reference1: Vehicle = Vehicle(kind: "Car")
    var reference2: Vehicle?
    */
    /* step 2 */
    var reference1: Vehicle?
    var reference2: Vehicle?
    var reference3: Vehicle?
    
    var timer: NSTimer?
    var count = 0
    
    @IBOutlet weak var toggleButton: UIButton!
    @IBAction func handleButtonTapped(sender: UIButton) {
        if count == 0 {
            
            reference1 = Vehicle(kind: "Car") // initialize objects
            reference2 = reference1
            reference3 = reference1
            
            toggleButton.titleLabel!.text = "stop" // toggle button text
            
            timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "tick", userInfo: nil, repeats: true) // start timer
            
        } else {
            
            toggleButton.titleLabel!.text = "start" // toggle button text
            
            timer?.invalidate() // stop timer
            
            reference1 = nil // remove references
            reference2 = nil
            reference3 = nil
            
            count = 0 // reset counter
        }
        
        
    }

    @IBOutlet weak var handleButtonTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    func tick() {
        
        if count >= 3 {
            reference3 = nil
            reference2 = nil
            print("the reference remains!")
        }
        
        if count >= 5 {
            reference1 = nil
            print("our object is deallocated!")
        }
        
        
        print("\(count++) sec")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

