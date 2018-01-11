//
//  GCDExtension.h
//  Extension
//
//  Created by admin on 2017/12/26.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GCDExtension : NSObject

//GCD - 在Main线程上运行
void kDispatch_Main_Thread( void(^block)(void) );

//GCD - 一次性执行
void kDispatch_Once( void(^block)(void) );

//GCD - 开启异步线程
void kDispatch_Async( void(^block)(void) );

@end
