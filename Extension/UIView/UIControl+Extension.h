//
//  UIControl+Extension.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (Extension)

@property (nonatomic, copy , readonly) UIControl *(^enable)(BOOL enable);
@property (nonatomic, copy , readonly) UIControl *(^selected)(BOOL selected);
@property (nonatomic, copy , readonly) UIControl *(^highlighted)(BOOL highlighted);

@property (nonatomic, copy , readonly) UIControl *(^switchEnable)(void);
@property (nonatomic, copy , readonly) UIControl *(^switchSelected)(void);
@property (nonatomic, copy , readonly) UIControl *(^switchHighlighted)(void);

@end
