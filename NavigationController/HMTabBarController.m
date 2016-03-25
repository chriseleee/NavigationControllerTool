//
//  HMTabBarController.m
//  NavigationController
//
//  Created by 李智 on 16/3/17.
//  Copyright © 2016年 李智. All rights reserved.
//

#import "HMTabBarController.h"
#import "HomePageViewController.h"
#import "VideoViewController.h"
#import "shareTableViewController.h"
#import "myTableViewController.h"
#import "HMNavigationController.h"
#import "HMTabBar.h"
#import "plusViewController.h"
@interface HMTabBarController ()<HMTabBarDelegate>

@end

@implementation HMTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HomePageViewController *pageController = [[HomePageViewController alloc]init];
    [self addChildViewController:pageController withTitle:@"page" image:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    
    VideoViewController *videoController = [[VideoViewController alloc]init];
    [self addChildViewController:videoController withTitle:@"video" image:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
    
    shareTableViewController *shareController = [[shareTableViewController alloc]init];
    [self addChildViewController:shareController withTitle:@"share" image:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
    
    myTableViewController *myController = [[myTableViewController alloc]init];
    [self addChildViewController:myController withTitle:@"MySelf" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
    
    //2.更换系统自带的tabbar
    HMTabBar *tabBar = [[HMTabBar alloc]init];
    tabBar.barDelegate = self;
    [self setValue:tabBar forKeyPath:@"tabBar"];
}


-(void)addChildViewController:(UIViewController *)childController withTitle:(NSString*)title image:(NSString*)image selectedImage:(NSString*)selectedImage
{
    HMNavigationController *child = [[HMNavigationController alloc]initWithRootViewController:childController];
    childController.title = title;
    childController.tabBarItem.image = [UIImage imageNamed:image];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //设置字体样式
    NSMutableDictionary *textDic = [NSMutableDictionary dictionary];
    textDic[NSForegroundColorAttributeName] = HMColor(123, 123, 123);
    textDic[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    NSMutableDictionary *textDicSelect = [NSMutableDictionary dictionary];
    textDicSelect[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childController.tabBarItem setTitleTextAttributes:textDic forState:UIControlStateNormal];
    [childController.tabBarItem setTitleTextAttributes:textDicSelect forState:UIControlStateSelected];
    
    // 添加为子控制器
    [self addChildViewController:child];
}

#pragma mark HMTabBarDelegate
-(void)tabBarDidClickPlusButton:(HMTabBar *)tabBar{
    plusViewController *plusVC  = [[plusViewController alloc]init];
    [self presentViewController:plusVC animated:YES completion:nil];
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
