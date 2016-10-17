//
//  UIImage+Render.m
//  ElonBDJ19
//
//  Created by Elon Lee on 16/10/16.
//  Copyright © 2016年 Elon Lee Co.,Ltd. All rights reserved.
//

#import "UIImage+Render.h"

@implementation UIImage (Render)
+ (UIImage *)imageNamedWithOriginal:(NSString *)name
{
    UIImage *selImage = [UIImage imageNamed:name];
    selImage = [selImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return selImage;
}

@end
