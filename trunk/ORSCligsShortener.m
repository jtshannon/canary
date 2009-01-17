//
//  ORSCligsShortener.m
//  URL Shorteners
//
//  Created by Nicholas Toumpelis on 18/10/2008.
//  Copyright 2008 Ocean Road Software. All rights reserved.
//
//  0.6 - 18/10/2008

#import "ORSCligsShortener.h"

@implementation ORSCligsShortener

// This method returns the generated (shortened) URL that corresponds to the 
// given (original) URL.
- (NSString *) generateURLFrom:(NSString *)originalURL {
	NSString *requestURL = [NSString 
		stringWithFormat:@"http://cli.gs/api/v1/cligs/create?url=%@", 
							originalURL];
	/*NSURLRequest *request = [NSURLRequest 
		requestWithURL:[NSURL URLWithString:requestURL]
			cachePolicy:NSURLRequestUseProtocolCachePolicy
				timeoutInterval:21.0];
	NSURLResponse *response = nil;
	NSError *error = nil;
	return [[NSString alloc] initWithData:[NSURLConnection 
		sendSynchronousRequest:request returningResponse:&response error:&error]
								 encoding:NSASCIIStringEncoding];*/
	return [super generateURLFromRequestURL:requestURL];
}

@end
