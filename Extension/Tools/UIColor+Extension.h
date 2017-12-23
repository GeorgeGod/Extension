//
//  UIColor+Extension.h
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)

// 默认alpha位1
+ (UIColor *)colorWithHexStr:(NSString *)color;

//从十六进制字符串获取颜色，
//color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
+ (UIColor *)colorWithHexStr:(NSString *)color alpha:(CGFloat)alpha;

/**
 获取随机色

 @return 颜色对象
 */
+ (UIColor *)randomColor;
@end
