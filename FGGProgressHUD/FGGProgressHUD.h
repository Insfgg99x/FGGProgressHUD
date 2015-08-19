//
//  FGGProgressHUD.h
//  FGGProgressHUD
//
//  Created by 夏桂峰 on 15/8/12.
//  Copyright (c) 2015年 夏桂峰. All rights reserved.
//
/*
------------------------------------------------------------------------
 FGGProgressHUD用法简介：
 ==>导入FGGProgressHUD.h
 ==>下载数据的时候显示：[FGGProgressHUD showLoadingOnView:self.view];
    显示后界面显示loading画面和UIActivityIndicator，同时状态栏显示网络活动指示器。
 ==>下载完或下载失败关闭：[FGGProgressHUD hideLoadingFromView:self.view];
------------------------------------------------------------------------
 */
#import <UIKit/UIKit.h>

#define kDimsViewTag 5355321
#define RGB(r,g,b,a) ([UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)])
/**
 *  加载提示标签
 */
@interface FGGProgressHUD : UILabel

/**
 *  显示加载提示标签
 *
 *  @param v 父视图
 */
+(void)showLoadingOnView:(UIView *)v;
/**
 *  移除加载提示标签
 *
 *  @param v 父视图
 */
+(void)hideLoadingFromView:(UIView *)v;

@end
