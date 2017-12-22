//
//  UITextField+Extension.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Extension)

@property (nonatomic, copy , readonly) UITextField *(^Text)(NSString *text);
@property (nonatomic, copy , readonly) UITextField *(^Color)(NSString *color);
@property (nonatomic, copy , readonly) UITextField *(^Font)(UIFont *font);
@property (nonatomic, copy , readonly) UITextField *(^Align)(NSTextAlignment align);
@property (nonatomic, copy , readonly) UITextField *(^Holder)(NSString *placeholder);
@property (nonatomic, copy , readonly) UITextField *(^Delegate)(id object);
@property (nonatomic, copy , readonly) UITextField *(^ClearsOnBeginEditing)(BOOL clear);

@end
