//
//  UIImage+Extension.h
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

/**
 用颜色创建图片
 
 @param color 颜色对象
 @return 图片对象
 */
+ (UIImage *)imageUseColor:(UIColor *)color;



/**
 获取资源包中的图片

 @param name 图片的名称
 @return 图片对象
 */
+ (UIImage *)load:(NSString *)name;
@end
