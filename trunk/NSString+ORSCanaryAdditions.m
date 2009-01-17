//
//  NSString+ORSCanaryAdditions.m
//  Canary
//
//  Created by Nicholas Toumpelis on 04/10/2008.
//  Copyright 2008 Ocean Road Software. All rights reserved.
//

#import "NSString+ORSCanaryAdditions.h"

@implementation NSString ( ORSCanaryAdditions )

// Detects and replaces HTML Character Entities
+ (NSString *) replaceHTMLEntities:(NSString *)string {
	NSRange range = [string rangeOfString:@"&"];
	if (range.location == NSNotFound)
		return string;
	else {
		range = [string rangeOfString:@"&lt;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&lt;"
													 withString:@"<"];
		range = [string rangeOfString:@"&gt;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&gt;"
													 withString:@">"];
		range = [string rangeOfString:@"&amp;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&amp;"
													 withString:@"&"];
		range = [string rangeOfString:@"&quot;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&amp;"
													 withString:@"\""];
		range = [string rangeOfString:@"&apos;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&apos;"
													 withString:@"\'"];
		range = [string rangeOfString:@"&cent;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&cent;"
													 withString:@"¢"];
		range = [string rangeOfString:@"&pound;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&pound;"
													 withString:@"£"];
		range = [string rangeOfString:@"&yen;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&yen;"
													 withString:@"¥"];
		range = [string rangeOfString:@"&euro;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&euro;"
													 withString:@"€"];
		range = [string rangeOfString:@"&sect;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&sect;"
													 withString:@"§"];
		range = [string rangeOfString:@"&copy;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&copy;"
													 withString:@"©"];
		range = [string rangeOfString:@"&reg;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&reg;"
													 withString:@"®"];
		range = [string rangeOfString:@"&times;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&times;"
													 withString:@"×"];
		range = [string rangeOfString:@"&divide;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurrencesOfString:@"&divide;"
													 withString:@"÷"];
		range = [string rangeOfString:@"&#8217;"];
		if (range.location != NSNotFound)
			return [string stringByReplacingOccurencesOfString:@"&#8217;"
													withString:@"’"];
		return string;
	}
}

@end
