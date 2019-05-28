//
//  ViewController.swift
//  MemoryManagement
//
//  Created by Dan Beaulieu on 12/5/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var car: Vehicle?
    var steve: Driver?

    var toggle = false
    
    @IBOutlet weak var toggleButton: UIButton!
    @IBAction func handleToggleTapped(sender: UIButton) {
        if toggle == false {
            
            self.car = Vehicle(kind: "Car")
            self.steve = Driver(name: "Steve")
            
            self.car!.driver = steve
            self.steve!.vehicle = car
            
            self.toggle = true
            self.toggleButton.setTitle("Stop", forState: .Normal)

        } else {
            self.steve = nil
            self.car = nil
         
            self.toggleButton.setTitle("Run", forState: .Normal)
            self.toggle = false
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

