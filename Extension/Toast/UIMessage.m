//
//  UIMessage.m
//  Extension
//
//  Created by admin on 2017/12/26.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIMessage.h"

@interface UIMessage()
{
    UIView *bar;
    UILabel *labMessage;
    
    NSString *message;
}
@end
@implementation UIMessage

+(void)showSuccessMessage:(NSString *)msg Complete:(void(^)(void))completeBlock {
    UIMessage *msgView = UIMessage.new;
    msgView->message = msg;
    [msgView makeMessageUI];
}

+(void)showFailureMessage:(NSString *)message Complete:(void(^)(void))completeBlock {
    
}

-(void)makeMessageUI {
    bar = [UIView new];
    bar.backgroundColor = [UIColor blackColor];
    bar.frame = CGRectMake(40, 600, 300, 50);
    [[self obtainSuperView] addSubview:bar];
    
    CGSize size = [UIScreen mainScreen].bounds.size;
    CGPoint center = CGPointMake(size.width*0.5, size.height*0.618);
    bar.center = center;
    
    labMessage = [UILabel new];
    labMessage.text = @"ssssssssss";
    labMessage.textColor = [UIColor whiteColor];
    labMessage.font = [UIFont systemFontOfSize:17 weight:UIFontWeightLight];
    labMessage.textAlignment = NSTextAlignmentCenter;
    [bar addSubview:labMessage];
    labMessage.frame = bar.bounds;
}

-(UIView *)obtainSuperView {
    return [UIApplication sharedApplication].keyWindow;
}

-(BOOL)messageUIExist {
    
    BOOL result = NO;
    
    return result;
}

-(CGSize)obtainMessageSize:(NSString *)txt {
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    CGSize size = [txt boundingRectWithSize:CGSizeMake((screenSize.width-40*2), MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:nil context:nil].size;
    return size;
}
@end
