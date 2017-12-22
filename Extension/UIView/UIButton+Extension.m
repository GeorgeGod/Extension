//
//  UIButton+Extension.m
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIButton+Extension.h"
#import "UIColor+Extension.h"

@implementation UIButton (Extension)

-(UIButton *(^)(NSString *))Text {
    return ^(NSString *text) {
        [self setTitle:text forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton *(^)(NSString *))Color {
    return ^(NSString *color) {
        [self setTitleColor:[UIColor colorWithHexStr:color] forState:UIControlStateNormal];
        return self;
    };
}
-(UIButton *(^)(UIFont *))Font {
    return ^(UIFont *font) {
        self.titleLabel.font = font;
        return self;
    };
}
-(UIButton *(^)(BOOL))Enable {
    return ^(BOOL enable) {
        self.enabled = enable;
        return self;
    };
}
@end
