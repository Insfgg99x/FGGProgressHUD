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
    [super viewDidLoad];
    //加载指示器
    [FGGProgressHUD showLoadingOnView:self.view];
    
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-40, 200, 80, 60)];
    [btn setTitle:@"关闭" forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor orangeColor];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
-(void)click:(UIButton *)sender
{
    if([sender.currentTitle isEqualToString:@"关闭"])
    {
        [FGGProgressHUD hideLoadingFromView:self.view];
        [sender setTitle:@"显示" forState:UIControlStateNormal];
    }
    else
    {
        [FGGProgressHUD showLoadingOnView:self.view];
        [sender setTitle:@"关闭" forState:UIControlStateNormal];
    }

}
@end
