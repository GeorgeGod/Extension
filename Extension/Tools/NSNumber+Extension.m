//
//  NSNumber+Extension.m
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "NSNumber+Extension.h"

@implementation NSNumber (Extension)

float scale(float x) {
    float width = [UIScreen mainScreen].bounds.size.width;
    float s = width/375.0;
    return x*s;
}

-(float (^)(void))scale {
    float width = [UIScreen mainScreen].bounds.size.width;
    float f = width/375.0;
    return ^() {
        return [self floatValue]*f;
    };
}

@end
