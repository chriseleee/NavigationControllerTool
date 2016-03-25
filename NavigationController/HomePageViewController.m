//
//  HomePageViewController.m
//  NavigationController
//
//  Created by 李智 on 16/3/17.
//  Copyright © 2016年 李智. All rights reserved.
//

#import "HomePageViewController.h"
#import "HMDropDownMenu.h"
#import "HWTitleMenuViewController.h"
@interface HomePageViewController ()<HMDropDownMenuDelegate>

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *titleBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    titleBtn.width = 150;
    titleBtn.height = 40;
    [titleBtn setTitle:@"page" forState:UIControlStateNormal];
    [titleBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [titleBtn setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:UIControlStateNormal];
    [titleBtn addTarget:self action:@selector(showHome:) forControlEvents:UIControlEventTouchUpInside];
    titleBtn.imageEdgeInsets = UIEdgeInsetsMake(0, 70, 0, 0);
    titleBtn.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 60);
    self.navigationItem.titleView = titleBtn;
    
    //leftBarButtonItem
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(leftItemClick) image:@"back" cornerRdius:20 size:CGSizeMake(40, 40)];
    //rightBarButtonItem
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(showRightHome:) image:@"tabbar_discover_selected" highImage:@"tabbar_discover"];
    
    
    
}

-(void)showRightHome:(UIButton*)btn{
    
}
-(void)showHome:(UIButton*)btn{
    
    HMDropDownMenu *menu = [HMDropDownMenu menu];
    menu.delegate = self;
    HWTitleMenuViewController *contentVC = [[HWTitleMenuViewController alloc]init];
    contentVC.view.width = 150;
    contentVC.view.height = 150;
    
    menu.contentController = contentVC;
    
    [menu showFrom:btn];
}

-(void)leftItemClick{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**
 *  下拉菜单被销毁了
 */
- (void)dropdownMenuDidDismiss:(HMDropDownMenu *)menu
{
    UIButton *titleButton = (UIButton *)self.navigationItem.titleView;
    // 让箭头向下
    titleButton.selected = NO;
}


/**
 *  下拉菜单显示了
 */
- (void)dropdownMenuDidShow:(HMDropDownMenu *)menu
{
    UIButton *titleButton = (UIButton *)self.navigationItem.titleView;
    // 让箭头向上
    titleButton.selected = YES;
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
