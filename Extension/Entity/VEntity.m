//
//  VEntity.m
//  Extension
//
//  Created by 虞嘉伟 on 2017/12/23.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "VEntity.h"

@implementation VEntity

+(instancetype)VEntity:(char *)title detail:(char *)detail holder:(char *)holder {
    VEntity *entity = [VEntity new];
    entity.title = [NSString stringWithUTF8String:title];
    entity.detail = [NSString stringWithUTF8String:detail];
    entity.holder = [NSString stringWithUTF8String:holder];
    entity.type = UICellTypeDefault;
    return entity;
}

-(VEntity *(^)(BOOL))showToggle {
    return ^(BOOL toggle) {
        self.toggle = toggle;
        return self;
    };
}

-(VEntity *(^)(BOOL))showArrow {
    return ^(BOOL arrow) {
        self.arrow = arrow;
        return self;
    };
}

-(VEntity *(^)(UICellType))cellType {
    return ^(UICellType type) {
        self.type = type;
        return self;
    };
}

@end
