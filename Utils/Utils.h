#import "UIKit/UIKit.h"

#include <string.h>
#include <inttypes.h>
#include <stdbool.h>
#include <iostream>

@interface Utils : NSObject
@end

void showPopup(const char *title, const char *description, bool recall = false);
void showPopup(NSString *title, NSString *description, bool recall = false);