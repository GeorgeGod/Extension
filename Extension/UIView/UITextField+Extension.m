//
//  UITextField+Extension.m
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UITextField+Extension.h"
#import "UIColor+Extension.h"

@implementation UITextField (Extension)

-(UITextField *(^)(NSString *))Text {
    return ^(NSString *text) {
        self.text = text;
        return self;
    };
}

-(UITextField *(^)(NSString *))Color {
    return ^(NSString *color) {
        self.textColor = [UIColor colorWithHexStr:color];
        return self;
    };
}

-(UITextField *(^)(UIFont *))Font {
    return ^(UIFont *font) {
        self.font = font;
        return self;
    };
}

-(UITextField *(^)(NSTextAlignment))Align {
    return ^(NSTextAlignment align) {
        self.textAlignment = align;
        return self;
    };
}
-(UITextField *(^)(NSString *))Holder {
    return ^(NSString *placeholder) {
        self.placeholder = placeholder;
        return self;
    };
}
-(UITextField *(^)(id))Delegate {
    return ^(id object) {
        self.delegate = object;
        return self;
    };
}
-(UITextField *(^)(BOOL))ClearsOnBeginEditing {
    return ^(BOOL clear) {
        self.clearsOnBeginEditing = clear;
        return self;
    };
}
@end
