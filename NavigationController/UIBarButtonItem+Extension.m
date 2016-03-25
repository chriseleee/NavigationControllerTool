//
//  UIBarButtonItem+Extension.m
//  NavigationController
//
//  Created by 李智 on 16/3/19.
//  Copyright © 2016年 李智. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+(UIBarButtonItem*)itemWithTarget:(id)target action:(SEL)action image:(NSString*)image highImage:(NSString*)highImage
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    btn.size = btn.currentBackgroundImage.size;
    
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image cornerRdius:(CGFloat)rdius size:(CGSize)size{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    btn.size = size;
    
    btn.layer.cornerRadius = rdius;
    btn.layer.masksToBounds = YES;
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}


@end
