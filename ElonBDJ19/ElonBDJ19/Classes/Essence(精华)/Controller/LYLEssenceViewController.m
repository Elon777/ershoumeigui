//
//  LYLEssenceViewController.m
//  ElonBDJ19
//
//  Created by Elon Lee on 16/10/15.
//  Copyright © 2016年 Elon Lee Co.,Ltd. All rights reserved.
//

#import "LYLEssenceViewController.h"

@interface LYLEssenceViewController ()

@end

@implementation LYLEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
     //设置导航条内容 => 栈顶控制器的navigationItem决定
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    // 左边
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"nav_item_game_icon"] highImage:[UIImage imageNamed:@"nav_item_game_click_icon"] target:self action:@selector(gameClick)];
    
    // 右边
    UIBarButtonItem *item = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"navigationButtonRandom"] highImage:[UIImage imageNamed:@"navigationButtonRandomClick"] target:nil action:nil];
    self.navigationItem.rightBarButtonItem = item;




}
- (void)gameClick
{
    NSLog(@"点击了游戏");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
