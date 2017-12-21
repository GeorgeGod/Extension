//
//  UIButton+Extension.m
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIButton+Extension.h"
#import "UIImage+Extension.h"

@implementation UIButton (Extension)
@dynamic backColor;

-(void)setBackColor:(UIColor *)backColor {
    [self setBackgroundImage:[UIImage imageUseColor:backColor] forState:UIControlStateNormal];
}
-(UIColor *)backColor {
//    UIImage *image = [self backgroundImageForState:UIControlStateNormal];
    return [UIColor whiteColor];
}

/**
 给按钮添加点击事件
 
 @param target 代理对象
 @param selector 选择器
 */
-(void)addTarget:(id)target selector:(SEL)selector {
    if ([target respondsToSelector:selector]) {
        [self addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    } else {
        NSLog(@"Extension:没有找到方法%@", NSStringFromSelector(selector));
    }
}


/**
 给按钮添加点击事件
 
 @param target 代理对象
 @param action 选择器
 */
-(void)addTarget:(id)target action:(char *)action {
    NSString *aSelectorName = [NSString stringWithCString:action encoding:NSUTF8StringEncoding];
    SEL sel = NSSelectorFromString(aSelectorName);
    [self addTarget:target selector:sel];
}

@end
