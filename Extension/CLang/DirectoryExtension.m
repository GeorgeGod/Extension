//
//  DirectoryExtension.m
//  Extension
//
//  Created by admin on 2017/12/26.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "DirectoryExtension.h"

@implementation DirectoryExtension

//获取temp
NSString * kTemporaryDirectory() {
    return NSTemporaryDirectory();
}

//获取沙盒 Document
NSString *kDocumentDirectory() {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
}

//获取沙盒 Cache
NSString *kCacheDirectory() {
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
}

@end
