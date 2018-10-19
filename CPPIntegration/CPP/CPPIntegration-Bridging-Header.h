//
//  In this project, we use this file to expose C methods in BrainWrapper.cpp, which are themselves wrappers of the C++ methods in Brain.cpp, to Swift.
//

#ifdef __cplusplus
extern "C" {
#endif

    char *brainString(char *text);
    
#ifdef __cplusplus
}
#endif

