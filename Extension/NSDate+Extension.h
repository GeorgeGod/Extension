//
//  NSDate+Extension.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)

/* 星座 */
@property (nonatomic, copy , readonly) NSString *(^constellation)(void);

/* 年龄 */
@property (nonatomic, copy , readonly) NSInteger(^age)(void);

/* 系统时间转中国时间 */
@property (nonatomic, copy , readonly) NSDate *(^chinaDate)(void);

@end
