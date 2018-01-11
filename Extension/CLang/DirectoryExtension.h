//
//  DirectoryExtension.h
//  Extension
//
//  Created by admin on 2017/12/26.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DirectoryExtension : NSObject
//获取temp
NSString * kTemporaryDirectory(void);

//获取沙盒 Document
NSString *kDocumentDirectory(void);

//获取沙盒 Cache
NSString *kCacheDirectory(void);
@end
