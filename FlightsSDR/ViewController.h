//
//  ViewController.h
//  FlightsSDR
//
//  Created by Kenneth Anguish on 8/18/15.
//  Copyright © 2015 Kenneth Anguish. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface ViewController : NSViewController {
    
}

@property (nonatomic, retain) IBOutlet WebView *webView;

- (void)loadurl:(id)action;

@end

