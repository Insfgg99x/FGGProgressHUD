
#import "FGGProgressHUD.h"
#import "Masonry.h"

@implementation FGGProgressHUD

+(FGGProgressHUD *)showLoadingOnView:(UIView *)v{
    
    FGGProgressHUD *loadingView=[[FGGProgressHUD alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    loadingView.backgroundColor=[UIColor colorWithWhite:0.2 alpha:1];
    loadingView.layer.cornerRadius=10;
    
    UIActivityIndicatorView *indicator=[[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    indicator.activityIndicatorViewStyle=UIActivityIndicatorViewStyleWhiteLarge;
    [loadingView addSubview:indicator];
    [indicator mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(loadingView).offset(20);
        make.centerX.equalTo(loadingView);
        make.size.mas_equalTo(CGSizeMake(30, 30));
    }];
    [indicator startAnimating];
    
    UILabel *lb=[[UILabel alloc] initWithFrame:CGRectZero];
    lb.text=@"Loading...";
    lb.textColor=[UIColor whiteColor];
    lb.textAlignment=NSTextAlignmentCenter;
    lb.font=[UIFont boldSystemFontOfSize:17];
    [loadingView addSubview:lb];
    [lb mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(indicator.mas_bottom).offset(10);
        make.left.equalTo(loadingView).offset(5);
        make.right.equalTo(loadingView).offset(-5);
        make.height.equalTo(@20);
    }];
    
    [UIView animateWithDuration:0.2 animations:^{
        
        [v addSubview:loadingView];
        [loadingView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.center.equalTo(v);
            make.size.mas_equalTo(CGSizeMake(100, 100));
        }];
    }];
    return loadingView;
}
+(void)hideLoadingFromView:(UIView *)v{
    
    for(UIView *sub in v.subviews){
        
        if([sub isKindOfClass:[FGGProgressHUD class]]){
            
            [UIView animateWithDuration:0.2 animations:^{
                
                [sub removeFromSuperview];
            }];
        }
    }
}
-(void)hide{
    
    __weak typeof(self) wkself=self;
    [UIView animateWithDuration:0.2 animations:^{
        
        [wkself removeFromSuperview];
    }];
}

@end
