//
//  HelloFromSwift.swift
//  SwiftInObjC
//
//  Created by Dan Beaulieu on 12/11/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//

import UIKit

public class HelloFromSwift: NSObject {

    private var message = "from Swift"
    
    override init() {
        super.init()
    }
    
    required public init(coder aDecoder: NSCoder) {
        super.init()
    }
    
    public func getMessage() -> NSString {
        
        return self.message
    }
    
}
