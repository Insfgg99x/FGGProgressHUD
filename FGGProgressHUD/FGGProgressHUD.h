
#import <UIKit/UIKit.h>

@interface FGGProgressHUD : UIView

+ (FGGProgressHUD *)showLoadingOnView:(UIView *)v;
+ (void)hideLoadingFromView:(UIView *)v;
- (void)hide;

@end
