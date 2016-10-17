//
//  UIBarButtonItem+Item.h
//  ElonBDJ19
//
//  Created by Elon Lee on 16/10/17.
//  Copyright © 2016年 Elon Lee Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)
+ (instancetype)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;

+ (instancetype)itemWithImage:(UIImage *)image selImage:(UIImage *)selImage target:(id)target action:(SEL)action;


@end
