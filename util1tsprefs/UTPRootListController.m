#import <Foundation/Foundation.h>
#import "UTPRootListController.h"
#import <UIKit/UIKit.h>

@implementation UTPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (void)openGithub {
	[[UIApplication sharedApplication] 
	openURL:[NSURL URLWithString:@"https://github.com/Kikismine/Util1ts-Tweak"] 
	options:@{} 
	completionHandler:nil];
}

@end