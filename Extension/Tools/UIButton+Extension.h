//
//  UIButton+Extension.h
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ButtonCallBackBlock)(void);
@interface UIButton (Extension)

//背景色 只写属性
@property (nonatomic, strong) UIColor *backColor;

/**
 根据状态值创建背景色

 @param color 背景色
 @param state 状态值
 */
-(void)setBackColor:(UIColor *)color forState:(UIControlState)state;


/**
 给按钮添加点击事件
 
 @param target 代理对象
 @param selector 选择器
 */
-(void)addTarget:(id)target selector:(SEL)selector;


/**
 给按钮添加点击事件
 
 @param target 代理对象
 @param action 选择器
 */
-(void)addTarget:(id)target action:(char *)action;


/**
 给按钮添加block的点击事件回调
 */
-(void)addCallBack:(ButtonCallBackBlock)callback;

@end
