//
//  UIControl+Extension.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (Extension)

@property (nonatomic, copy , readonly) UIControl *(^Enable)(BOOL enable);
@property (nonatomic, copy , readonly) UIControl *(^Selected)(BOOL selected);
@property (nonatomic, copy , readonly) UIControl *(^Highlighted)(BOOL highlighted);

@property (nonatomic, copy , readonly) UIControl *(^SwitchEnable)(void);
@property (nonatomic, copy , readonly) UIControl *(^SwitchSelected)(void);
@property (nonatomic, copy , readonly) UIControl *(^SwitchHighlighted)(void);

@end
