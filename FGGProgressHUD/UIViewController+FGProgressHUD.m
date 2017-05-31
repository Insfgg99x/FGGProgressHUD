
#import "UIViewController+FGProgressHUD.h"
#import "FGGProgressHUD.h"
#import <objc/runtime.h>

@implementation UIViewController (FGProgressHUD)

- (void)showHUD{
    
    __weak typeof(self) wkself=self;
    dispatch_async(dispatch_get_main_queue(), ^{
       
        FGGProgressHUD *hud=[FGGProgressHUD showLoadingOnView:self.view];
        objc_setAssociatedObject(wkself, "hudkey", hud, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    });
}
- (void)hideHUD{
    
    FGGProgressHUD *hud=objc_getAssociatedObject(self, "hudkey");
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [hud hide];
    });
}

@end
