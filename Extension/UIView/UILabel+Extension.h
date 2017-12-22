//
//  UILabel+Extension.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Extension)
@property (nonatomic, copy , readonly) UILabel *(^Text)(NSString *text);
@property (nonatomic, copy , readonly) UILabel *(^Font)(UIFont *font);
@property (nonatomic, copy , readonly) UILabel *(^Color)(NSString *color);
@property (nonatomic, copy , readonly) UILabel *(^ShadowColor)(NSString *color);
@property (nonatomic, copy , readonly) UILabel *(^ShadowOffset)(CGSize size);
@property (nonatomic, copy , readonly) UILabel *(^Align)(NSTextAlignment align);
@property (nonatomic, copy , readonly) UILabel *(^Break)(NSLineBreakMode mode);
@property (nonatomic, copy , readonly) UILabel *(^AttributedText)(NSAttributedString *text);
@property (nonatomic, copy , readonly) UILabel *(^InteractionEnabled)(BOOL enable);
@property (nonatomic, copy , readonly) UILabel *(^Enable)(BOOL enable);
@property (nonatomic, copy , readonly) UILabel *(^Line)(NSInteger number);
@end
