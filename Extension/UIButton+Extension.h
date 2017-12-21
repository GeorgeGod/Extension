//
//  UIButton+Extension.h
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)

@property (nonatomic, strong) UIColor *backColor; //　背景色

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


@end
