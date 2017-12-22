//
//  UIControl+Extension.m
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIControl+Extension.h"

@implementation UIControl (Extension)

-(UIControl *(^)(BOOL))enable {
    return ^(BOOL enable) {
        self.enabled = enable;
        return self;
    };
}

-(UIControl *(^)(BOOL))selected {
    return ^(BOOL selected) {
        self.selected = selected;
        return self;
    };
}
-(UIControl *(^)(BOOL))highlighted {
    return ^(BOOL highlighted) {
        self.highlighted = highlighted;
        return self;
    };
}

-(UIControl *(^)(void))switchEnable {
    return ^() {
        self.enabled = !self.isEnabled;
        return self;
    };
}

-(UIControl *(^)(void))switchSelected {
    return ^() {
        self.selected = !self.isSelected;
        return self;
    };
}

-(UIControl *(^)(void))switchHighlighted {
    return ^() {
        self.highlighted = !self.isHighlighted;
        return self;
    };
}

@end
