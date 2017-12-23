//
//  NSObject+Extension.m
//  Extension
//
//  Created by 虞嘉伟 on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "NSObject+Extension.h"

@implementation NSObject (Extension)

-(BOOL (^)(NSDictionary *))judgeCode {
    return ^(NSDictionary *json) {
        BOOL result = NO;
        if ([json isKindOfClass:[NSDictionary class]]) {
            int code = [json[@"errcode"] intValue];
            result = (code==0);
        }
        return result;
    };
}

-(BOOL (^)(NSString *))judgeEmptyStr {
    return ^(NSString *str) {
        BOOL result = NO;
        if (!str) {
            result = YES;
        }
        else if ([str isKindOfClass:[NSString class]]) {
            result = (str.length==0);
        }
        return result;
    };
}

-(BOOL (^)(NSString *))judgeNilStr {
    return ^(NSString *str) {
        if (!str) {
            return YES;
        }
        return NO;
    };
}
@end
