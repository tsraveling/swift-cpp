//
//  Brain.cpp
//  CPPIntegration
//
//  Created by Timothy Raveling on 10/19/18.
//  Copyright © 2018 Firemark Foundry. All rights reserved.
//

#include "Brain.hpp"

const char* Brain::processText(char *text) {
    
    // Get a starting string we can use
    string input = (string)text;
    
    // Modify the output
    string output = "What do you mean, \"" + input + "\"\?\?!\?";
    
    // Note that this actually prints to the console in Xcode, which is cool
    cout << "Cool: " << output << "\n";
    
    // Allocate a character array to use to return the string, and use that
    static char retval[2048];
    strcpy(retval, output.c_str());
    return retval;
}
