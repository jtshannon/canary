//
//  ORSCanaryPreferencesController.h
//  Canary
//
//  Created by Nicholas Toumpelis on 10/11/2008.
//  Copyright 2008 Ocean Road Software. All rights reserved.
//
//  0.6 - 10/11/2008

#import <Cocoa/Cocoa.h>
#import "ORSCanaryController.h"

@interface ORSCanaryPreferencesController : NSWindowController {
	
}

- (IBAction) timelineRefreshRateSelected:sender;
- (IBAction) maxShownUpdatesSelected:sender;
- (IBAction) urlShortenerSelected:sender;

@end
