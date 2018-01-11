//
//  Definition.h
//  Extension
//
//  Created by admin on 2017/12/26.
//  Copyright © 2017年 admin. All rights reserved.
//

#ifndef Definition_h
#define Definition_h

/*** 定义属性的宏定义 ***/
#define PROPERTY_COPY @property (nonatomic, copy)
#define PROPERTY_ASSIGN @property (nonatomic, assign)
#define PROPERTY_ASSIGN_READONLY @property (nonatomic, copy, readonly)
#define PROPERTY_ASSIGN_READWRITE @property (nonatomic, copy, readwrite)


/*** 自定义高效率的 NSLog ***/
#if DEBUG
#define NSLog(...) NSLog(@"%s 第%d行 \n %@\n\n",__func__,__LINE__,[NSString stringWithFormat:__VA_ARGS__])
#else
#define NSLog(...)
#endif


#define weakSelf(type)  __weak typeof(type) weak##type = type;
#define strongSelf(type)  __strong typeof(type) type = weak##type;



/*** 判断是真机还是模拟器 ***/
#if TARGET_OS_IPHONE
//iPhone Device
#endif

#if TARGET_IPHONE_SIMULATOR
//iPhone Simulator
#endif




#endif /* Definition_h */

