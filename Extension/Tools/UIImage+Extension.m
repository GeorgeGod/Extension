//
//  UIImage+Extension.m
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)


/**
 用颜色创建图片

 @param color 颜色对象
 @return 图片对象
 */
+ (UIImage *)imageUseColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

/**
 获取资源包中的图片
 
 @param name 图片的名称
 @return 图片对象
 */
+ (UIImage *)load:(NSString *)name {
    if (![name hasSuffix:@".png"]) {
        //portrait@3x.png
        name = [NSString stringWithFormat:@"%@@%dx.png", name, (int)[UIScreen mainScreen].scale];
    }
    
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"MineResources" ofType:@"bundle"];
    
    bundlePath = [bundlePath stringByAppendingPathComponent:@"images"];
    
    NSString *imgPath= [bundlePath stringByAppendingPathComponent:name];
    
    UIImage *image = [UIImage imageWithContentsOfFile:imgPath];
    
    return image;
}
@end
