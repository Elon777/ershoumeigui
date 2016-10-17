//
//  LYLNewViewController.m
//  ElonBDJ19
//
//  Created by Elon Lee on 16/10/15.
//  Copyright © 2016年 Elon Lee Co.,Ltd. All rights reserved.
//

#import "LYLNewViewController.h"
#import "UIBarButtonItem+Item.h"
@interface LYLNewViewController ()

@end

@implementation LYLNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupNavBar];
}


-(void)setupNavBar{
    
    // 设置导航条内容 => 栈顶控制器的navgationItem决定
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];

    // 左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] highImage:[UIImage imageNamed:@"MainTagSubIconClick"] target:self action:@selector(subClick)];

    
    
    
}

- (void)subClick
{
    NSLog(@"订阅标签");
}


@end
