+ (BOOL)isSpecialCharInside:(NSString *)inputStr {
    
    if (inputStr == nil || [inputStr length] == 0) return NO;
    
    for (int i = 0; i < inputStr.length; i ++) {
        
        unichar c = [inputStr characterAtIndex:i];
        if ((c < '0' || c > '9') && (c < 'a' || c > 'z') &&
            (c < 'A' || c > 'Z') && (c < 0x4e00 || c > 0x9fa5)) {
            
            return YES;
        }
    }
    
    return NO;
}
