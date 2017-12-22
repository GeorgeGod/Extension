//
//  UIView+Extension.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

@property (nonatomic, copy , readonly) UIView *(^Frame)(CGRect rect);
//@property (nonatomic, copy , readonly) UIView *(^mas)(CGRect rect);

@end
