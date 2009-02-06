//
//  NSXMLNode+ORSTwitterStatusAdditions.h
//  Twitter Engine
//
//  Created by Nicholas Toumpelis on 20/02/2008.
//  Copyright 2008 Ocean Road Software. All rights reserved.
//
//  0.2 - 16/04/2008
//  0.5 - 03/10/2008
//  0.6 - 02/11/2008

#import <Cocoa/Cocoa.h>

@interface NSXMLNode ( ORSTwitterStatusAdditions )

- (NSXMLNode *) firstNodeForXPath:(NSString *)xpathString;
- (NSString *) createdAt;
- (NSString *) createdAtAsTimeInterval;
- (NSInteger) createdAtSecondsAgo;
- (NSString *) ID;
- (NSString *) text;
- (NSString *) source;
- (BOOL) truncated;
- (NSString *) inReplyToStatusID;
- (NSString *) inReplyToUserID;
- (NSString *) inReplyToScreenName;
- (NSString *) userID;
- (NSString *) userName;
- (NSString *) userScreenName;
- (NSString *) userLocation;
- (NSString *) userDescription;
- (NSString *) userProfileImageURL;
- (NSString *) userURL;
- (BOOL) userProtected;
- (NSString *) userFollowersCount;
- (NSAttributedString *) richText;
- (BOOL) protectedStatus;

@end
