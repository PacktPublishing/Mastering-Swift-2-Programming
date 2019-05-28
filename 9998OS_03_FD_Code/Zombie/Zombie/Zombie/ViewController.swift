//
//  ViewController.swift
//  Zombie
//
//  Created by Dan Beaulieu on 12/6/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var unsafeString : UnsafeMutablePointer<String>!
    
    @IBAction func handleCreateZombieTapped(sender: UIButton) {
       
        unsafeString.destroy() // deinitializes our object
        unsafeString.dealloc(1) // deallocates memory
        //unsafeString.dealloc(1) // deallocates memory
        unsafeString.memory = "Zombie!"
        unsafeString = nil
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        unsafeString = UnsafeMutablePointer<String>.alloc(1)
        unsafeString.initialize("Faucet")
        
        print(unsafeString.memory)
  
    }

}

