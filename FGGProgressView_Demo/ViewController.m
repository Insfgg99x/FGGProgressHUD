//
//  ViewController.m
//  FGGProgressView_Demo
//
//  Created by 夏桂峰 on 15/8/12.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//

#import "ViewController.h"
#import "FGGProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [FGGProgressHUD showLoadingOnView:self.view];
}
@end
