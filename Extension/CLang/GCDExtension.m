//
//  GCDExtension.m
//  Extension
//
//  Created by admin on 2017/12/26.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "GCDExtension.h"

@implementation GCDExtension

//GCD - 在Main线程上运行
void kDispatch_Main_Thread( void(^block)(void) ) {
    dispatch_async(dispatch_get_main_queue(), block);
}

//GCD - 一次性执行
void kDispatch_Once( void(^block)(void) ) {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, block);
}

//GCD - 开启异步线程
void kDispatch_Async( void(^block)(void) ) {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block);
}

@end
