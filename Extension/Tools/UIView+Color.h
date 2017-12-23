//
//  UIView+Color.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Color)

@property (nonatomic, copy , readonly) UIView *(^color)(NSString *color);

+(instancetype)ViewWithColor:(NSString *)color;
@end
