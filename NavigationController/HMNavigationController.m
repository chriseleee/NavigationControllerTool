//
//  HMNavigationController.m
//  NavigationController
//
//  Created by 李智 on 16/3/17.
//  Copyright © 2016年 李智. All rights reserved.
//

#import "HMNavigationController.h"

@interface HMNavigationController ()

@end

@implementation HMNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    [super pushViewController:viewController animated:animated];
    if (self.viewControllers.count>1) {
    
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(more) image:@"navigationbar_more" highImage:@"navigationbar_more_highlighted"];
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"navigationbar_back" highImage:@"navigationbar_back_highlighted"];
        
        [[UINavigationBar appearance]setShadowImage:[[UIImage alloc]init]];
        [self.navigationController.navigationBar.layer setMasksToBounds:YES];

    }
}

#pragma mark barButtonItem方法
- (void)back
{
#warning 这里要用self，不是self.navigationController
    // 因为self本来就是一个导航控制器，self.navigationController这里是nil的
    [self popViewControllerAnimated:YES];
}

- (void)more
{
    [self popToRootViewControllerAnimated:YES];
}
#pragma mark end


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
