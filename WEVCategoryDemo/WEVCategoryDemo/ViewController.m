//
//  ViewController.m
//  WEVCategoryDemo
//
//  Created by phenix on 12/17/15.
//  Copyright © 2015 WithoutEvil. All rights reserved.
//

#import "ViewController.h"
#import "NSString+WEVCategory.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self loadDemo];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Private

- (void)loadDemo {
    /**--------------Generates a random string of specified length--------------**/
    
    // Generates a random string of specified length.
    NSLog(@"Generates a random string of specified length: %@", [NSString randomStringWithLength:32]);
    
    // Determine whether the string is empty(nil 、NSNull and empty strings are determined to be empty).
    NSLog(@"nil is determined to be empty: %@", [NSString isEmpty:nil] ? @"YES" : @"NO");
    NSLog(@"NSNull is determined to be empty: %@", [NSString isEmpty:(NSString *)[NSNull null]] ? @"YES" : @"NO");
    NSLog(@"'' is determined to be empty: %@", [NSString isEmpty:@""] ? @"YES" : @"NO");
    
    // Determine whether the string is not empty(only nil 、NSNull and empty strings are determined to be empty).
    NSLog(@"nil isn't determined to be empty: %@", [NSString isNotEmpty:nil] ? @"YES" : @"NO");
    NSLog(@"NSNull isn't determined to be empty: %@", [NSString isNotEmpty:(NSString *)[NSNull null]] ? @"YES" : @"NO");
    NSLog(@"'' isn't determined to be empty: %@", [NSString isNotEmpty:@""] ? @"YES" : @"NO");
}

@end
