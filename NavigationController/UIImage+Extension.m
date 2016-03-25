//
//  UIImage+Extension.m
//  NavigationController
//
//  Created by 李智 on 16/3/19.
//  Copyright © 2016年 李智. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)
+(UIImage*) createImageWithColor: (UIColor*) color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage*theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
