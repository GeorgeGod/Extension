//
//  HttpClient.m
//  Extension
//
//  Created by admin on 2017/12/26.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "HttpClient.h"

@interface HttpClient()
@property (nonatomic, copy  ) NSString *httpUrl;
@property (nonatomic, copy  ) NSString *httpUri;
@property (nonatomic, assign) RequestType httpType;
@property (nonatomic, copy  ) NSDictionary *httpParams;
@property (nonatomic, copy  ) NSArray *httpPictures;
@property (nonatomic, copy  ) SuccessBlock httpSuccess;
@property (nonatomic, copy  ) FailureBlock httpFailure;
@property (nonatomic, copy  ) FinshedBlock httpFinshed;
@end

@implementation HttpClient

-(HttpClient *(^)(NSArray *))pictures {
    return ^(NSArray *pictures) {
        self.httpPictures = pictures;
        return self;
    };
}

-(HttpClient *(^)(NSString *, NSDictionary *, SuccessBlock, FailureBlock, FinshedBlock))getRequest {
    return ^(NSString *uri, NSDictionary *params, SuccessBlock success, FailureBlock failure, FinshedBlock finshed) {
        self.httpType = RequestTypeGet;
        self.httpUri = uri;
        self.httpParams = params;
        self.httpSuccess = success;
        self.httpFailure = failure;
        self.httpFinshed = finshed;
        [self beginGetRequest];
        return self;
    };
}
-(HttpClient *(^)(NSString *, NSDictionary *, SuccessBlock, FailureBlock, FinshedBlock))postRequest {
    return ^(NSString *uri, NSDictionary *params, SuccessBlock success, FailureBlock failure, FinshedBlock finshed) {
        self.httpType = RequestTypePost;
        self.httpUri = uri;
        self.httpParams = params;
        self.httpSuccess = success;
        self.httpFailure = failure;
        self.httpFinshed = finshed;
        [self beginPostRequest];
        return self;
    };
}


/** ARC单例 **/
/*
 1 在类的内部提供一个static修饰的全局变量
 2 提供一个类方法，方便外界访问
 3 重写+allocWithZone方法，保证永远都只为单例对象分配一次内存空间
 4 严谨起见，重写-copyWithZone方法和-MutableCopyWithZone方法
 */
// 创建静态对象 防止外部访问
static HttpClient *_instance;
+(instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (_instance == nil) {
            _instance = [super allocWithZone:zone];
        }
    });
    return _instance;
}
// 为了使实例易于外界访问 我们一般提供一个类方法
// 类方法命名规范 share类名|default类名|类名
+(instancetype)shareHttpClient {
    //return _instance;
    // 最好用self 用Tools他的子类调用时会出现错误
    return [[self alloc]init];
}
// 为了严谨，也要重写copyWithZone 和 mutableCopyWithZone
-(id)copyWithZone:(NSZone *)zone {
    return _instance;
}
-(id)mutableCopyWithZone:(NSZone *)zone {
    return _instance;
}

+(void)HttpClientURL:(NSString *)url {
    HttpClient *http = [HttpClient shareHttpClient];
    http.httpUrl = url;
}




-(void)beginGetRequest
{
    NSString *url = [NSString stringWithFormat:@"%@%@", self.httpUrl, self.httpUri];
    
    NSMutableString *mutableUrl = [[NSMutableString alloc] initWithString:url];
    
    NSDictionary *parameters = self.httpParams; //params.headParams;
    if ([parameters allKeys]) {
        [mutableUrl appendString:@"?"];
        for (id key in parameters) {
            NSString *value = [[parameters objectForKey:key] stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
            [mutableUrl appendString:[NSString stringWithFormat:@"%@=%@&", key, value]];
        }
    }
    NSString *urlEnCode = [[mutableUrl substringToIndex:mutableUrl.length - 1] stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:urlEnCode]];
    NSURLSession *urlSession = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [urlSession dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                if (self.httpFailure) {
                    self.httpFailure(error);
                }
            } else {
                if (!data) {
                    if (self.httpFinshed) {
                        self.httpFinshed(@"请求数据错误");
                    }
                } else {
                    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
                    if ([dic[@"errcode"] intValue] == 0) {
                        if (self.httpSuccess) {
                            self.httpSuccess(dic);
                        }
                    } else {
                        if (self.httpFinshed) {
                            self.httpFinshed(dic[@"errmsg"]);
                        }
                    }
                }
            }
        });
    }];
    [dataTask resume];
}

-(void)beginPostRequest
{
    
    NSString *url = [NSString stringWithFormat:@"%@%@", self.httpUrl, self.httpUri];
    
    //在请求URL中添加一个token
    //    if (GVUSERINFO.accessToken.length > 0) {
    //        url = [url stringByAppendingFormat:@"?token=%@", GVUSERINFO.accessToken];
    //    }
    //    NSURL *nsurl = [NSURL URLWithString:url];
    //    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:nsurl];
    //如果想要设置网络超时的时间的话，可以使用下面的方法：
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10];
    
    //设置请求类型
    request.HTTPMethod = @"POST";
    
    //把参数放到请求体内
    NSString *postStr = [HttpClient parseParams:self.httpParams];
    request.HTTPBody = [postStr dataUsingEncoding:NSUTF8StringEncoding];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                if (self.httpFailure) {
                    self.httpFailure(error);
                }
            } else {
                //请求成功
                if (data == nil) {
                    if (self.httpFinshed) {
                        self.httpFinshed(@"请求数据错误");
                    }
                } else {
                    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
                    
                    if ([dic[@"errcode"] intValue] == 0) {
                        if (self.httpSuccess) {
                            self.httpSuccess(dic);
                        }
                    } else {
                        //可能token过期了
                        //                    [Http getTokenThenRequest:params success:success failure:failure];
                        if (self.httpFinshed) {
                            self.httpFinshed(dic[@"errmsg"]);
                        }
                    }
                }
            }
        });
    }];
    //开始请求
    [dataTask resume];
}

//拼接参数
+ (NSString *)parseParams:(NSDictionary *)params {
    
    NSMutableDictionary *parameters = [[NSMutableDictionary alloc] initWithDictionary:params];
    NSString *keyValueFormat;
    NSMutableString *result = [NSMutableString new];
    NSEnumerator *keyEnum = [parameters keyEnumerator];
    id key;
    while (key = [keyEnum nextObject]) {
        keyValueFormat = [NSString stringWithFormat:@"%@=%@&", key, [params valueForKey:key]];
        [result appendString:keyValueFormat];
    }
    return result;
}
@end
