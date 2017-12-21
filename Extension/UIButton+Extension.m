//
//  UIButton+Extension.m
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIButton+Extension.h"
#import "UIImage+Extension.h"
#import <objc/runtime.h>

@implementation UIButton (Extension)
@dynamic backColor;

-(void)setBackColor:(UIColor *)backColor {
    objc_setAssociatedObject(self, @"kbackColor", backColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setBackgroundImage:[UIImage imageUseColor:backColor] forState:UIControlStateNormal];
}
-(UIColor *)backColor {
    UIColor *color = objc_getAssociatedObject(self, @"kbackColor");
    if (color) {
        return color;
    } else {
        return [self backgroundColor];
    }
}
-(void)setBackColor:(UIColor *)color forState:(UIControlState)state {
    [self setBackgroundImage:[UIImage imageUseColor:color] forState:state];
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


/**
 给按钮添加block的点击事件回调
 */
-(void)addCallBack:(ButtonCallBackBlock)callback {
    objc_setAssociatedObject(self, @"kButtonCallBackBlock", callback, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self selector:@selector(buttonClickedAction:)];
}
-(void)buttonClickedAction:(UIButton *)sender {
    ButtonCallBackBlock block = objc_getAssociatedObject(self, @"kButtonCallBackBlock");
    if (block) {
        block();
    }
}

@end
