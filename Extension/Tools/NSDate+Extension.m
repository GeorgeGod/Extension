//
//  NSDate+Extension.m
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)

-(NSString *(^)(void))constellation {
    return ^() {
        NSDate *birthDay = self;
        
        NSDateFormatter *formatter = [NSDateFormatter new];
        [formatter setDateFormat:@"MM"];
        NSInteger month = [[formatter stringFromDate:birthDay] intValue];
        
        [formatter setDateFormat:@"dd"];
        NSInteger day = [[formatter stringFromDate:birthDay] intValue];
        
        NSString * astroString = @"摩羯座水瓶座双鱼座白羊座金牛座双子座巨蟹座狮子座处女座天秤座天蝎座射手座摩羯座";
        NSString * astroFormat = @"102123444543";
        NSString * result;
        
        result = [NSString stringWithFormat:@"%@",[astroString substringWithRange:NSMakeRange(month*3-(day < [[astroFormat substringWithRange:NSMakeRange((month-1), 1)] intValue] - (-19))*3, 3)]];
        return result;
    };
}

-(NSInteger (^)(void))age {
    return ^() {
        NSCalendar *calendar = [NSCalendar currentCalendar];//定义一个NSCalendar对象
        
        NSDate *nowDate = [NSDate date];
        
        //生日
        NSDate *birthDay = self;
        
        //用来得到详细的时差
        unsigned int unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
        NSDateComponents *date = [calendar components:unitFlags fromDate:birthDay toDate:nowDate options:0];
        
        return ([date year]>0) ? [date year] : 0;
    };
}

-(NSDate *(^)(void))chinaDate {
    return ^() {
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        NSInteger interval = [timeZone secondsFromGMTForDate:self];
        return [self dateByAddingTimeInterval:interval];
    };
}

@end
