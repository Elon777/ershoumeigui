//
//  UITabBarItem+Font.m
//  ElonBDJ19
//
//  Created by Elon Lee on 16/10/16.
//  Copyright © 2016年 Elon Lee Co.,Ltd. All rights reserved.
//

#import "UITabBarItem+Font.h"

@implementation UITabBarItem (Font)
- (void)setupTabBarButtonFont:(UIFont *)font
{
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSFontAttributeName] = font;
    //必须是正常状态
    [self setTitleTextAttributes:attr forState:UIControlStateNormal];
}

@end
