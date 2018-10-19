//
//  BrainWrapper.cpp
//  CPPIntegration
//
//  Created by Timothy Raveling on 10/19/18.
//  Copyright © 2018 Firemark Foundry. All rights reserved.
//

#include "Brain.hpp"

// This file functions as C file, and is the bridge between the actual Swift bridging header and the C++ class `Brain`. We
// can do anything here that we can do in string, which is why we're working with a char* data type rather than the much
// more convenient std::string.

extern "C" const char* brainString(char *text) {
    return Brain::processText(text);
}
