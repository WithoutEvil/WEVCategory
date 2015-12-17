//
//  NSString+WEVCategory.m
//  WithoutEvil
//
//  Created by tune on 16/4/15.
//  Copyright (c) 2015 WithoutEvil. All rights reserved.
//

#import "NSString+WEVCategory.h"

static NSString * const letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

@implementation NSString (WEVCategory)

+ (NSString *) randomStringWithLength: (int) len {
    
    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
    
    for (int i=0; i<len; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random_uniform((unsigned int)[letters length])]];
    }
    
    return randomString;
}

+ (BOOL)isEmpty:(NSString *)string {

    if (!string) {
        return YES;
    }
    
    // If NSNull, handle as empty string.
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    
    string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if ([string isEqualToString:@""]) {
        return YES;
    }
    
    return NO;
}

+ (BOOL)isNotEmpty:(NSString *)string {
    return ![NSString isEmpty:string];
}

@end
