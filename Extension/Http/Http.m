//
//  Http.m
//  Extension
//
//  Created by 虞嘉伟 on 2017/12/24.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "Http.h"
@interface Http()
@property (nonatomic, copy  ) NSString *httpUrl;
@property (nonatomic, copy  ) NSString *httpUri;
@property (nonatomic, assign) RequestType httpType;
@property (nonatomic, copy  ) NSDictionary *httpParams;
@property (nonatomic, copy  ) NSArray *httpPictures;
@property (nonatomic, copy  ) SuccessBlock httpSuccess;
@property (nonatomic, copy  ) FailureBlock httpFailure;
@property (nonatomic, copy  ) FinshedBlock httpFinshed;
@end

@implementation Http

-(Http *(^)(NSString *))get {
    return ^(NSString *uri) {
        self.httpUri = uri;
        self.httpType = RequestTypeGet;
        return self;
    };
}

-(Http *(^)(NSString *))post {
    return ^(NSString *uri) {
        self.httpUri = uri;
        self.httpType = RequestTypePost;
        return self;
    };
}

-(Http *(^)(NSDictionary *))params {
    return ^(NSDictionary *params) {
        self.httpParams = params;
        return self;
    };
}

-(Http *(^)(NSArray *))pictures {
    return ^(NSArray *pictures) {
        self.httpPictures = pictures;
        return self;
    };
}

-(Http *(^)(SuccessBlock, FailureBlock, FinshedBlock))complete {
    return ^(SuccessBlock success, FailureBlock failure, FinshedBlock finshed) {
        self.httpSuccess = success;
        self.httpFailure = failure;
        self.httpFinshed = finshed;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(6 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if (self.httpFinshed) {
                self.httpFinshed(@"请求超时了");
            }
        });
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
static Http *_instance;
+(instancetype)allocWithZone:(struct _NSZone *)zone {
    //    @synchronized (self) {
    //        // 为了防止多线程同时访问对象，造成多次分配内存空间，所以要加上线程锁
    //        if (_instance == nil) {
    //            _instance = [super allocWithZone:zone];
    //        }
    //        return _instance;
    //    }
    // 也可以使用一次性代码
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
+(instancetype)shareHttps {
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

+(void)HttpURL:(NSString *)url {
    Http *http = [Http shareHttps];
    http.httpUrl = url;
}

@end
