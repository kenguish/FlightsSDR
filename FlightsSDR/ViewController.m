//
//  ViewController.m
//  FlightsSDR
//
//  Created by Kenneth Anguish on 8/18/15.
//  Copyright © 2015 Kenneth Anguish. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize webView;

- (void)viewDidLoad {
    [super viewDidLoad];
//    [[self.webView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: @"http://hk.yahoo.com"]]];
    //[self.webView setMainFrameURL: @"http://localhost:8080/"];
    //[self performSelector:@selector(loadurl:) withObject: nil afterDelay: 1.0];

    [[NSNotificationCenter defaultCenter] addObserver: self  selector: @selector(loadurl:) name: @"trigger_webkit" object:nil];
}

- (void)loadurl:(id)action {
    NSLog(@"loadurl........................");
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [[self.webView mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: @"http://127.0.0.1:8080/"]]];
    });
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
