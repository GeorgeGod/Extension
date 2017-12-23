//
//  NSObject+Extension.h
//  Extension
//
//  Created by 虞嘉伟 on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Extension)

@property (nonatomic, copy , readonly) BOOL (^judgeCode)(NSDictionary *json);
@property (nonatomic, copy , readonly) BOOL (^judgeEmptyStr)(NSString *str);
@property (nonatomic, copy , readonly) BOOL (^judgeNilStr)(NSString *str);


@end
