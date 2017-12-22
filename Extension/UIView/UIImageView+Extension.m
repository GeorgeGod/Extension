//
//  UIImageView+Extension.m
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIImageView+Extension.h"

@implementation UIImageView (Extension)

-(UIImageView *(^)(BOOL))InteractionEnabled {
    return ^(BOOL enable) {
        self.userInteractionEnabled = enable;
        return self;
    };
}
//-(UIImageView *(^)(NSString *))Image {
//    return ^(NSString *name) {
//        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]];
//    };
//}

@end
