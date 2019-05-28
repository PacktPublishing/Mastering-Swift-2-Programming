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

//        if let dict = dictFromPlist() {
//            print(dict)
//        } else {
//            print("bad things happened")
//        }
        
        var dict : [String: AnyObject]?
        do {
            dict = try dictFromPlist()
        } catch let FilePathError.BadFilePath(message) {
            print("File path error : \(message)")
        } catch let error {
            print("something mysterious happened: \(error)")
        }
        
        print(dict)
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
//    func dictFromPlist() -> [String: AnyObject]? {
//        let filePath = NSBundle.mainBundle().pathForResource("missingFile", ofType: "plist")
//        
//        let data = NSDictionary(contentsOfFile:filePath!) as? [String: AnyObject]
//        return data
//    
//    
//    }

    func dictFromPlist() throws -> [String: AnyObject] {
        guard let filePath = NSBundle.mainBundle().pathForResource("missingFile", ofType: "plist") else {
            throw FilePathError.BadFilePath(message: "File not found at given location, make sure file is included in project bundle!")
        }
        
        
        let data = NSDictionary(contentsOfFile:filePath)
        
        return data as! [String: AnyObject]
        
        
    }
    
}

enum FilePathError: ErrorType {
    case BadFilePath(message: String)
    // case AccessDenied
    // case DamagedFile
}