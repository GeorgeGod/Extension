//
//  UIMessage.h
//  Extension
//
//  Created by admin on 2017/12/26.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIMessage : NSObject

+(void)showSuccessMessage:(NSString *)message Complete:(void(^)(void))completeBlock;

+(instancetype)showFailureMessage:(NSString *)message Complete:(void(^)(void))completeBlock;

@end
