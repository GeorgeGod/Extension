//
//  UIImageView+Extension.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Extension)

//+(instancetype)image

//@property (nonatomic, copy , readonly) UIImageView *(^Image)(NSString *image);
@property (nonatomic, copy , readonly) UIImageView *(^InteractionEnabled)(BOOL enable);
//@property (nonatomic, copy , readonly) UIImageView *(^Image)(NSString *name);

@end
