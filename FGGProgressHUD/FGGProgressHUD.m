//
//  FGGProgressHUD.m
//  FGGProgressHUD
//
//  Created by 夏桂峰 on 15/8/12.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import "FGGProgressHUD.h"

@implementation FGGProgressHUD

+(void)showLoadingOnView:(UIView *)v
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    
    CGFloat xpos=v.frame.size.width/2-80;
    CGFloat ypos=v.frame.size.height/2;
    FGGProgressHUD *loadingView=[[FGGProgressHUD alloc]initWithFrame:CGRectMake(xpos, ypos, 160, 60)];
    loadingView.backgroundColor=RGB(71, 71, 71,0.3);
    loadingView.layer.cornerRadius=6;
    loadingView.clipsToBounds=YES;
    loadingView.text=@"    Loading...";
    loadingView.textColor=[UIColor whiteColor];
    loadingView.textAlignment=NSTextAlignmentCenter;
    loadingView.font=[UIFont boldSystemFontOfSize:20];
    
    UIActivityIndicatorView *indicator=[[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    indicator.hidden=NO;
    [indicator startAnimating];
    indicator.frame=CGRectMake(10, 15, 30, 30);
    [loadingView addSubview:indicator];

    [UIView animateWithDuration:0.3 animations:^{
        [v addSubview:loadingView];
    }];
}
+(void)hideLoadingFromView:(UIView *)v
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    
    for(UIView *sub in v.subviews)
    {
        if([sub isKindOfClass:[FGGProgressHUD class]])
        {
            [UIView animateWithDuration:0.3 animations:^{
                [sub removeFromSuperview];
            }];
        }
    }
}
@end
