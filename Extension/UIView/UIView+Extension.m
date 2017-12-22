//
//  UIView+Extension.m
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

-(UIView *(^)(CGRect))Frame {
    return ^(CGRect frame) {
        [self setFrame:frame];
        return self;
    };
}
@end
