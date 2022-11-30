#import <AudioToolbox/AudioToolbox.h>

%hook SBVolumeControl

- (void)increaseVolume {
	%orig;

	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] 
	persistentDomainForName:@"com.kikismine.util1tsprefs"];
	id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];

	if ([isEnabled isEqual:@1]) {
		AudioServicesPlaySystemSound(1519);
	} else {
		%orig;
	}
}

- (void)decreaseVolume {
	%orig;

	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] 
	persistentDomainForName:@"com.kikismine.util1tsprefs"];
	id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];

	if ([isEnabled isEqual:@1]) {
		AudioServicesPlaySystemSound(1519);
	} else {
		%orig;
	}
}
%end