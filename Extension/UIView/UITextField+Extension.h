//
//  UITextField+Extension.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Extension)

@property (nonatomic, copy , readonly) UITextField *(^atext)(NSString *text);
@property (nonatomic, copy , readonly) UITextField *(^color)(NSString *color);
@property (nonatomic, copy , readonly) UITextField *(^font)(UIFont *font);
@property (nonatomic, copy , readonly) UITextField *(^align)(NSTextAlignment align);
@property (nonatomic, copy , readonly) UITextField *(^holder)(NSString *placeholder);
@property (nonatomic, copy , readonly) UITextField *(^adelegate)(id object);
@property (nonatomic, copy , readonly) UITextField *(^aclearsOnBeginEditing)(BOOL clear);

@end
