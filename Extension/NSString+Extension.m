//
//  NSString+Extension.m
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

-(NSURL *(^)(void))url {
    return ^() {
        return [NSURL URLWithString:self];
    };
}

-(NSURLRequest *(^)(void))request {
    return ^() {
        return [NSURLRequest requestWithURL:[NSURL URLWithString:self]];
    };
}

-(NSDate *(^)(NSString *))date {
    return ^(NSString *formatter) {
        NSDateFormatter *dateformatter = [NSDateFormatter new];
        [dateformatter setDateFormat:formatter];
        return [dateformatter dateFromString:self];
    };
}

-(NSTimeInterval(^)(NSString *))timestamp {
    return ^(NSString *formatter) {
        NSDateFormatter *dateformatter = [NSDateFormatter new];
        [dateformatter setDateFormat:formatter];
        NSDate *date = [dateformatter dateFromString:self];
        return [date timeIntervalSince1970];
    };
}

-(UIImage *(^)(void))image {
    return ^() {
        return [UIImage imageNamed:self];
    };
}
-(UIImageView *(^)(void))imageView {
    return ^() {
        return [[UIImageView alloc] initWithImage:[UIImage imageNamed:self]];
    };
}
@end
