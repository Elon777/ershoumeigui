//
//  LYLTabBarController.m
//  ElonBDJ19
//
//  Created by Elon Lee on 16/10/15.
//  Copyright © 2016年 Elon Lee Co.,Ltd. All rights reserved.
//

#import "LYLTabBarController.h"
#import "LYLEssenceViewController.h"
#import "LYLNewViewController.h"
#import "LYLPublishViewController.h"
#import "LYLFriendTrendViewController.h"
#import "LYLMeViewController.h"
#import "UIImage+Render.h"
#import "UITabBarItem+Font.h"
@interface LYLTabBarController ()

@property(nonatomic,weak) UIButton * plusButton;

@end

@implementation LYLTabBarController

//系统一启动就把类加载到内存中

+(void)load{
    
    //获取UITabBarItem外观
    UITabBarItem * item = [UITabBarItem appearance];
    //注意此处用不了分类  因为类型不对   此处类型是UIBarItemAppearance
    
    //注意字体只能通过正常状态去设置
    NSMutableDictionary * attr = [NSMutableDictionary dictionary];
    attr[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:attr forState:UIControlStateNormal];
    
    
}

-(UIButton * )plusButton{
    
    if (_plusButton ==nil) {
        
        //创建加号按钮
         UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        _plusButton = btn;
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [btn sizeToFit];
        
         [self.tabBar addSubview:btn];
        
        
    }
    
    return _plusButton;
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
   
    //创建加号按钮
  
    
    self.plusButton.center = CGPointMake(self.tabBar.bounds.size.width * 0.5, self.tabBar.bounds.size.height * 0.5);
    
   
    
    
    
    //设置UITabBarButton的字体颜色(渲染成黑色)
    self.tabBar.tintColor = [UIColor blackColor];
    //1.添加tabBarVc所有子控制器 => 有多少个按钮就有多少子控制器
    [self setUpAllChildViewControllers];
    
    //2.设置tabBar上按钮的内容 => 由对应的自控制器的tabBarItem决定
    [self setUpAllTabBarButton];
    
}

-(void)setUpAllTabBarButton{
    UINavigationController *nav =  self.childViewControllers[0];
    nav.tabBarItem.title = @"精华";
    nav.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    nav.tabBarItem.selectedImage= [UIImage imageNamedWithOriginal:@"tabBar_essence_click_icon"];
//    [nav.tabBarItem setupTabBarButtonFont:[UIFont systemFontOfSize:13]];
    
    
    UINavigationController *nav1 = self.childViewControllers[1];
    nav1.tabBarItem.title = @"新帖";
    nav1.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    nav1.tabBarItem.selectedImage =[UIImage imageNamedWithOriginal:@"tabBar_new_click_icon"];
//    [nav1.tabBarItem setupTabBarButtonFont:[UIFont systemFontOfSize:13]];
    
    // 2
    UIViewController *vc = self.childViewControllers[2];
    vc.tabBarItem.enabled = NO;
//    vc.tabBarItem.image = [UIImage imageNamed:@"tabBar_publish_icon"];
//    vc.tabBarItem.selectedImage =[UIImage imageNamedWithOriginal:@"tabBar_publish_click_icon"];
    
    
    
    // 3
    UINavigationController *nav3 = self.childViewControllers[3];
    nav3.tabBarItem.title = @"关注";
    nav3.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    nav3.tabBarItem.selectedImage =[UIImage imageNamedWithOriginal:@"tabBar_friendTrends_click_icon"];
//    [nav3.tabBarItem setupTabBarButtonFont:[UIFont systemFontOfSize:13]];
    
    // 4
    UINavigationController *nav4 = self.childViewControllers[4];
    nav4.tabBarItem.title = @"我";
    nav4.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    nav4.tabBarItem.selectedImage =[UIImage imageNamedWithOriginal:@"tabBar_me_click_icon"];
    
//    [nav4.tabBarItem setupTabBarButtonFont:[UIFont systemFontOfSize:13]];
    
    
    
    
    
}
-(void)setUpAllChildViewControllers{
    
    //精华
    LYLEssenceViewController * essenceVc = [[LYLEssenceViewController alloc]init];
    essenceVc.view.backgroundColor = [UIColor blueColor];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:essenceVc];
    [self addChildViewController:nav];
    
    
    
    
    //新帖
    
    LYLNewViewController * newVc = [[LYLNewViewController alloc]init];
    newVc.view.backgroundColor = [UIColor orangeColor];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:newVc];
    [self addChildViewController:nav1];
    
    //发布
    LYLPublishViewController * publishVc = [[LYLPublishViewController alloc]init];
    publishVc.view.backgroundColor = [UIColor purpleColor];
    [self addChildViewController:publishVc];
    
    //关注
    LYLFriendTrendViewController * friVc = [[LYLFriendTrendViewController alloc]init];
    friVc.view.backgroundColor = [UIColor magentaColor];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:friVc];
    [self addChildViewController:nav3];
    
    //我
    LYLMeViewController * meVc = [[LYLMeViewController alloc]init];
    meVc.view.backgroundColor = [UIColor brownColor];
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:meVc];
    [self addChildViewController:nav4];
    
    
    
    
}

@end
