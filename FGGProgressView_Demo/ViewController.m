//
//  ViewController.m
//  FGGProgressView_Demo
//
//  Created by 夏桂峰 on 15/8/12.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+FGProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [self showHUD];
    __weak typeof(self) wkself=self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [wkself hideHUD];
    });
}

@end
