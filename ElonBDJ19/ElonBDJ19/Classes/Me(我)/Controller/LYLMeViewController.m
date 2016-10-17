//
//  LYLMeViewController.m
//  ElonBDJ19
//
//  Created by Elon Lee on 16/10/15.
//  Copyright © 2016年 Elon Lee Co.,Ltd. All rights reserved.
//

#import "LYLMeViewController.h"

@interface LYLMeViewController ()

@end

@implementation LYLMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupNavBar];
}


-(void)setupNavBar{
    self.navigationItem.title = @"我的";
    
    UIBarButtonItem *nightMode = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-moon-icon"] selImage:[UIImage imageNamed:@"mine-moon-icon-click"] target:self action:@selector(nightClick:)];
    
    UIBarButtonItem *setting = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"mine-setting-icon"] highImage:[UIImage imageNamed:@"mine-setting-icon-click"] target:self action:@selector(settingClick)];

    self.navigationItem.rightBarButtonItems = @[setting,nightMode];
    
    
    
}

// 夜间模式
- (void)nightClick:(UIButton *)btn
{
    btn.selected = !btn.selected;
    
}

// 设置
- (void)settingClick
{
    NSLog(@"点击订阅");
}

@end
