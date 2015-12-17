//
//  NSString+WEVCategory.h
//  WithoutEvil
//
//  Created by tune on 16/4/15.
//  Copyright (c) 2015 WithoutEvil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (WEVCategory)

/**
*  Generates a random string of specified length.
*
*  @param len Specified length.
*
*  @return A random string.
*/
+ (NSString *)randomStringWithLength: (int) len;

/**
 *  Determine whether the string is empty(nil 、NSNull and empty strings are determined to be empty).
 *
 *  @param string String.
 *
 *  @return Whether the string is empty.
 */
+ (BOOL)isEmpty:(NSString *)string;

/**
 *  Determine whether the string is not empty(only nil 、NSNull and empty strings are determined to be empty).
 *
 *  @param string String.
 *
 *  @return Whether the string is not empty.
 */
+ (BOOL)isNotEmpty:(NSString *)string;

@end
