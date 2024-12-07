#import "UIKit/UIKit.h"

@interface SPTAdaptiveTabBarController 
- (void)forceSelectionOfTabAtIndex:(unsigned long long)arg1;
@end

BOOL firstTime = false;

%hook SPTAdaptiveTabBarController
- (BOOL)didUpdateTabBarItemsAppearance{
	BOOL result = %orig;

   if (!firstTime) {
      [self forceSelectionOfTabAtIndex:2];
      firstTime = true;
   }

   return result;
}
%end