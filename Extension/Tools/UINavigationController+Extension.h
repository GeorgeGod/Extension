//
//  UINavigationController+Extension.h
//  Extension
//
//  Created by 虞嘉伟 on 2017/12/23.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (Extension)

-(void)display;

/**
 设置导航控制器的根控制器
 
 @param rootViewController 根控制器
 @return 导航控制器对象
 */
+(instancetype)RootViewCtrl:(UIViewController *)rootViewController;
@end
