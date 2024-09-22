#import "Utils/Utils.h"
#import "Utils/Memory.h"

#import "UIKit/UIKit.h"

#include <stdio.h>
#include <math.h>
#include <iostream>

#define timer(sec) dispatch_after(dispatch_time(DISPATCH_TIME_NOW, sec * NSEC_PER_SEC), dispatch_get_main_queue(), ^

extern "C" void initialize(NSString *values);
extern "C" void initialize(NSString *values) {
	// Do something here.
}

static void didFinishLaunching(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef info) {
	timer(4) {
		initialize(@"");
	});
}

%ctor {
	CFNotificationCenterAddObserver(CFNotificationCenterGetLocalCenter(), NULL, &didFinishLaunching, (CFStringRef)UIApplicationDidFinishLaunchingNotification, NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
}