//
//  Brain.swift
//  CPPIntegration
//
//  Created by Timothy Raveling on 10/19/18.
//  Copyright © 2018 Firemark Foundry. All rights reserved.
//

import Foundation

// This extension allows us to pass Swift String arguments into the C++ functions in Brain.cpp.
extension String {
    
    func toUTF8() -> UnsafeMutablePointer<Int8> {
        
        let unsafePointer = (self as NSString).utf8String!
        return UnsafeMutablePointer(mutating: unsafePointer);
    }
}

// This class is functionally a wrapper of the methods in the C++ Brain class. Because of the complexity of the bridge
// that is necessary between Swift and C++, efforts should be made to bottleneck data to a relatively small interface.

class Brain {
    
    // This method sends a string into the C++ class and returns the string it gets back.
    static func processString(_ text : String) -> String {
        
        // Convert our argument to a UTF8 string
        let convertedString = text.toUTF8()
        
        // Get the response from the C++ class
        let fromC = brainString(convertedString)
        
        // Translate the C String back to a regular Swift string and return it
        return String(cString: fromC!)
    }
}
