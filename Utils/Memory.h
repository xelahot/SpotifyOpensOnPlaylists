#import "Utils.h"
#import "UIKit/UIKit.h"
#import <Foundation/Foundation.h>

#include <substrate.h>
#include <mach/mach.h>
#include <dlfcn.h>
#include <mach-o/dyld.h>  
#include <mach-o/getsect.h>

@interface Memory : NSObject
@end

