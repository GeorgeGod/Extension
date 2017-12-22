//
//  UILabel+Extension.m
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UILabel+Extension.h"
#import "UIColor+Extension.h"

@implementation UILabel (Extension)

-(UILabel *(^)(NSString *))Text {
    return ^(NSString *text) {
        self.text = text;
        return self;
    };
}
-(UILabel *(^)(UIFont *))Font {
    return ^(UIFont *font) {
        self.font = font;
        return self;
    };
}
-(UILabel *(^)(NSString *))Color {
    return ^(NSString *color) {
        self.textColor = [UIColor colorWithHexStr:color];
        return self;
    };
}
-(UILabel *(^)(NSString *))ShadowColor {
    return ^(NSString *color) {
        self.shadowColor = [UIColor colorWithHexStr:color];
        return self;
    };
}
-(UILabel *(^)(CGSize))ShadowOffset {
    return ^(CGSize size) {
        self.shadowOffset = size;
        return self;
    };
}
-(UILabel *(^)(NSTextAlignment))Align {
    return ^(NSTextAlignment align) {
        self.textAlignment = align;
        return self;
    };
}
-(UILabel *(^)(NSLineBreakMode))Break {
    return ^(NSLineBreakMode mode) {
        self.lineBreakMode = mode;
        return self;
    };
}
-(UILabel *(^)(NSAttributedString *))AttributedText {
    return ^(NSAttributedString *attrStr) {
        self.attributedText = attrStr;
        return self;
    };
}
-(UILabel *(^)(BOOL))InteractionEnabled {
    return ^(BOOL enable) {
        self.userInteractionEnabled = enable;
        return self;
    };
}
-(UILabel *(^)(BOOL))Enable {
    return ^(BOOL enable) {
        self.enabled = enable;
        return self;
    };
}
-(UILabel *(^)(NSInteger))Line {
    return ^(NSInteger line) {
        self.numberOfLines = line;
        return self;
    };
}
@end
