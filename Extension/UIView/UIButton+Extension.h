//
//  UIButton+Extension.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)

@property (nonatomic, copy , readonly) UIButton *(^Text)(NSString *text);
@property (nonatomic, copy , readonly) UIButton *(^Color)(NSString *color);
@property (nonatomic, copy , readonly) UIButton *(^Font)(UIFont *font);
@property (nonatomic, copy , readonly) UIButton *(^Enable)(BOOL enable);

@end
