//
//  Http.h
//  Extension
//
//  Created by 虞嘉伟 on 2017/12/24.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SuccessBlock)(NSDictionary *json);
typedef void(^FailureBlock)(NSError *error);
typedef void(^FinshedBlock)(NSString *errmsg);
typedef NS_ENUM (NSInteger, RequestType) {
    RequestTypeGet=0,
    RequestTypePost,
};

@interface Http : NSObject

@property (nonatomic, copy, readonly) Http *(^get)(NSString *uri);
@property (nonatomic, copy, readonly) Http *(^post)(NSString *uri);
@property (nonatomic, copy, readonly) Http *(^params)(NSDictionary *params);
@property (nonatomic, copy, readonly) Http *(^pictures)(NSArray *pictures);
@property (nonatomic, copy, readonly) Http *(^complete)(SuccessBlock success, FailureBlock failure, FinshedBlock finshed);

+(instancetype)shareHttps;
+(void)HttpURL:(NSString *)url;
@end
