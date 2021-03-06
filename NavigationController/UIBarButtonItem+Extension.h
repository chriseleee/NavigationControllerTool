//
//  UIBarButtonItem+Extension.h
//  NavigationController
//
//  Created by 李智 on 16/3/19.
//  Copyright © 2016年 李智. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+(UIBarButtonItem*)itemWithTarget:(id)target action:(SEL)action image:(NSString*)image highImage:(NSString*)highImage;


+(UIBarButtonItem*)itemWithTarget:(id)target action:(SEL)action image:(NSString*)image cornerRdius:(CGFloat)rdius size:(CGSize)size;
@end
