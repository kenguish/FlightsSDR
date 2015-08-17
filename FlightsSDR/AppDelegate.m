//
//  AppDelegate.m
//  FlightsSDR
//
//  Created by Kenneth Anguish on 8/18/15.
//  Copyright © 2015 Kenneth Anguish. All rights reserved.
//

#import "AppDelegate.h"
#import "Dump1090Helper.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    Dump1090Helper *helper = [[Dump1090Helper alloc] init];
    
    [helper start];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
