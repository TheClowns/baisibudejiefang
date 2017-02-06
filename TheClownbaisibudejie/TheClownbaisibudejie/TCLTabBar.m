//
//  TCLTabBar.m
//  TheClownbaisibudejie
//
//  Created by 这是C先生 on 2017/2/6.
//  Copyright © 2017年 这是C先生. All rights reserved.
//

#import "TCLTabBar.h"

@interface TCLTabBar ()
@property (nonatomic,weak) UIButton * publishButton;
@end

@implementation TCLTabBar
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame: frame]) {
        
        //添加中间发布按钮
        //使用类方法
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        
        [self addSubview:publishButton];
        
        self.publishButton = publishButton;
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    //布局中间发布按钮
    self.publishButton.frame = CGRectMake(0, 0, self.publishButton.currentBackgroundImage.size.width, self.publishButton.currentBackgroundImage.size.height);
    self.publishButton.center = CGPointMake(self.frame.size.width*0.5, self.frame.size.height*0.5);
    
    //布局其他 按钮
    NSLog(@"%@",self.subviews);
    NSInteger index = 0;
    CGFloat Y = 0;
    CGFloat W = self.frame.size.width / 5;
    CGFloat H = self.frame.size.height;
    for (UIView *btn in self.subviews) {
        
        if (![btn isKindOfClass:NSClassFromString(@"UITabBarButton")])
            //不满足上面 即是中间的发布按钮 则跳出当前循环
            continue;
        //不满足上面条件 即是 四个其他按钮
        
        btn.frame = CGRectMake(W *((index >1)?(index +1):index), Y, W, H);
        index ++;
    }
    
    
    
    
}
@end
















