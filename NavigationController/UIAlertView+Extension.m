//
//  UIAlertView+Extension.m
//  NavigationController
//
//  Created by chrise on 16/3/25.
//  Copyright © 2016年 李智. All rights reserved.
//

#import "UIAlertView+Extension.h"



@implementation UIAlertView (Extension)

+(id)sharedAlertViewSingleton
{
    static UIAlertView *single = nil;
    
    single = [[UIAlertView alloc] init];
    
    return single;
}


@end
