//
//  UIControl+Extension.m
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIControl+Extension.h"

@implementation UIControl (Extension)

-(UIControl *(^)(BOOL))Enable {
    return ^(BOOL enable) {
        self.enabled = enable;
        return self;
    };
}

-(UIControl *(^)(BOOL))Selected {
    return ^(BOOL selected) {
        self.selected = selected;
        return self;
    };
}
-(UIControl *(^)(BOOL))Highlighted {
    return ^(BOOL highlighted) {
        self.highlighted = highlighted;
        return self;
    };
}

-(UIControl *(^)(void))SwitchEnable {
    return ^() {
        self.enabled = !self.isEnabled;
        return self;
    };
}

-(UIControl *(^)(void))SwitchSelected {
    return ^() {
        self.selected = !self.isSelected;
        return self;
    };
}

-(UIControl *(^)(void))SwitchHighlighted {
    return ^() {
        self.highlighted = !self.isHighlighted;
        return self;
    };
}

@end
