//
//  UIView+Color.m
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIView+Color.h"
#import "UIColor+Extension.h"

@implementation UIView (Color)

-(UIView *(^)(NSString *))color {
    return ^(NSString *color) {
        self.backgroundColor = [UIColor colorWithHexStr:color];
        return self;
    };
}

+(instancetype)ViewWithColor:(NSString *)color {
    UIView *colorV = [UIView new];
    colorV.backgroundColor = [UIColor colorWithHexStr:color];
    return colorV;
}
@end
