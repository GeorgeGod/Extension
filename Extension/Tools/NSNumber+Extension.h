//
//  NSNumber+Extension.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSNumber (Extension)

float scale(float x);

@property (nonatomic, copy , readonly) float(^scale)(void);

@end
