//
//  NSString+Extension.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (Extension)

/* 字符串 <==> 网络请求 */
@property (nonatomic, copy , readonly) NSURL *(^url)(void);
@property (nonatomic, copy , readonly) NSURLRequest *(^request)(void);

/* 字符串 <==> 时间 */
@property (nonatomic, copy , readonly) NSDate *(^date)(NSString *dtformatter);
@property (nonatomic, copy , readonly) NSTimeInterval(^timestamp)(NSString *dtformatter);

/* 字符串转UIImage */
@property (nonatomic, copy , readonly) UIImage *(^image)(void);

/* 字符串转UIImageView */
@property (nonatomic, copy , readonly) UIImageView *(^imageView)(void);
@end
