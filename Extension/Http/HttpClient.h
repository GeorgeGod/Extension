//
//  HttpClient.h
//  Extension
//
//  Created by admin on 2017/12/26.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Http.h"

//typedef void(^SuccessBlock)(NSDictionary *json);
//typedef void(^FailureBlock)(NSError *error);
//typedef void(^FinshedBlock)(NSString *errmsg);
//typedef NS_ENUM (NSInteger, RequestType) {
//    RequestTypeGet=0,
//    RequestTypePost,
//    RequestTypeImage,
//};
@interface HttpClient : NSObject

@property (nonatomic, copy, readonly) HttpClient *(^pictures)(NSArray *pictures);
@property (nonatomic, copy, readonly) HttpClient *(^getRequest)(NSString *uri, NSDictionary *params, SuccessBlock success, FailureBlock failure, FinshedBlock finshed);
@property (nonatomic, copy, readonly) HttpClient *(^postRequest)(NSString *uri, NSDictionary *params, SuccessBlock success, FailureBlock failure, FinshedBlock finshed);

+(instancetype)shareHttpClient;
+(void)HttpClientURL:(NSString *)url;
@end
