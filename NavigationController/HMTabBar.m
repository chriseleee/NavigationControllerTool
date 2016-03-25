//
//  HMTabBar.m
//  NavigationController
//
//  Created by 李智 on 16/3/20.
//  Copyright © 2016年 李智. All rights reserved.
//

#import "HMTabBar.h"

@interface HMTabBar ()

@property(nonatomic,strong)UIButton *plusBtn;

@end

@implementation HMTabBar
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //添加一个按钮到tabbar中
        UIButton *plusBtn = [[UIButton alloc]init];
        [plusBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [plusBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        [plusBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [plusBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
        plusBtn.size = plusBtn.currentBackgroundImage.size;
        [plusBtn addTarget:self action:@selector(plusClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:plusBtn];
        self.plusBtn = plusBtn;
    }
    return self;
}
/**
 *  加号按钮点击
 */
- (void)plusClick
{
    // 通知代理
    if ([self.barDelegate respondsToSelector:@selector(tabBarDidClickPlusButton:)]) {
        [self.barDelegate tabBarDidClickPlusButton:self];
    }
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    //1.设置加号按钮的位置
//    self.plusBtn.centerX = self.width*0.5;
//    self.plusBtn.centerY = self.height*0.5;
    
    WS(ws);
    [self.plusBtn makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(ws.centerX);
        make.centerY.equalTo(ws.centerY);
    }];
    
    //2.设置其他tabbarButton的位置尺寸
    CGFloat tabbarButtonW = self.size.width/5;
    CGFloat tabbarIndex = 0;
    for (UIView *view in self.subviews) {
        Class class = NSClassFromString(@"UITabBarButton");
        if ([view isKindOfClass:class]) {
            view.width = tabbarButtonW;
            view.x = tabbarIndex * tabbarButtonW;

            //增加索引
            tabbarIndex ++;
            if (tabbarIndex==2) {
                tabbarIndex ++;
            }
        }
    }
    
}


@end
