//
//  ViewController.m
//  NavigationController
//
//  Created by 李智 on 16/3/17.
//  Copyright © 2016年 李智. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertView+Extension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
   
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 10, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"btn" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpOutside];
    [self.view addSubview:btn];
    

    UIAlertView* alert = [[UIAlertView sharedAlertViewSingleton] initWithTitle:@"title" message:@"asdhfjkasdfhjasdfalskdldfhjskdafjhsjkdfiuhsudfuewiuuhrhfsadfjhajsdfhjasdhfasdfhjksadhfjashdjfashdfsajdfhajsdfhjasdhfjasdhfjadhsfjasdfaskdfdsafhjddsjjdjssdj" delegate:self cancelButtonTitle:NSLocalizedString(@"确定", @"") otherButtonTitles:nil, nil];
    [alert show];
    alert.tag = 2;
    alert.delegate = self;
    [self performSelector:@selector(click) withObject:self afterDelay:5];
    
//    UIAlertView *Alert2 = [[UIAlertView sharedAlertViewSingleton] initWithTitle:@"1" message:nil delegate:self cancelButtonTitle:NSLocalizedString(@"取消", @"") otherButtonTitles:NSLocalizedString(@"确定", @""), nil];
//    Alert2.tag = 1;
//    Alert2.delegate=self;
//    
//    [Alert2 show];

}

-(void)click{
    UIAlertView* alert = [[UIAlertView sharedAlertViewSingleton] initWithTitle:@"titleUp" message:@"just for test" delegate:self cancelButtonTitle:NSLocalizedString(@"确定", @"") otherButtonTitles:nil, nil];
    [alert show];
    alert.tag = 3;
    alert.delegate=self;
    
//    
//    UIAlertView *Alert2 = [[UIAlertView sharedAlertViewSingleton] initWithTitle:@"1" message:nil delegate:self cancelButtonTitle:NSLocalizedString(@"取消", @"") otherButtonTitles:NSLocalizedString(@"确定", @""), nil];
//    Alert2.tag = 1;
//    Alert2.delegate=self;
//    
//    [Alert2 show];
}

#pragma mark - UIAlertViewDelegate
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    

    if(alertView.tag == 1)
    {
        if(buttonIndex==1)
        {
            
            UIAlertView *tempAlert=[[UIAlertView alloc] initWithTitle:NSLocalizedString(@"正在登出中...", @"") message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:nil];
            [tempAlert show];
           
        }
    }
    else if (alertView.tag == 2) {
        
        //          [self.navigationController popViewControllerAnimated:NO];
        NSLog(@"2222222");

        
        if (buttonIndex ==0) {

            

            NSLog(@"buttonIndex=000000000000");
            

        }
        else
            if (buttonIndex ==1) {
                //确认
                
            }
        

        
    }

    if(alertView.tag == 3)
    {
        NSLog(@"333333333");
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
