//
//  main.m
//  ElonBDJ19
//
//  Created by Elon Lee on 16/10/15.
//  Copyright © 2016年 Elon Lee Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
/*
 UIApplicationMain底层做一些事情
 1.创建UIApplication对象(应用级别操作 1.设置提醒数字 2.设置联网状态 3.打电话,发短信) 4.修改状态栏 5.应用之间跳转openURl
 2.UIApplication对象代理(1.监听应用程序生命周期 2.监听内存警告)
 3.开启主允许循环(保证程序一直运行,监听事件) runloop
 4.判断下info.plist中,是否指定了main,如果指定了,就会去加载main.storyboard
 
 加载main.storyboard
 1.创建窗口
 2.设置窗口根控制器
 3.显示窗口
 */
int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
