//
//  NSMutableAttributedString+ORSCanaryAdditions.h
//  Canary
//
//  Created by Nicholas Toumpelis on 20/02/2008.
//  Copyright 2008 Ocean Road Software. All rights reserved.
//
//  0.2 - 16/04/2008
//  0.5 - 03/10/2008
//  0.6 - 10/11/2008

#import <Cocoa/Cocoa.h>

@interface NSMutableAttributedString ( ORSCanaryAdditions )

- (NSCharacterSet *) httpDelimitingCharset;
- (NSCharacterSet *) fullDelimitingCharset;
- (NSString *) detectURL:(NSString *)string;
- (NSString *) detectUsername:(NSString *)string;
- (NSAttributedString *) emoticonStringWithName:(NSString *)name;
- (void) highlightElements;

@end
