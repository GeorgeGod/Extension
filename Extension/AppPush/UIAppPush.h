//
//  UIAppPush.h
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAppPush : NSObject

-(void)application:(UIApplication*_Nullable) application didRegisterForRemoteNotificationsWithDeviceToken:(nonnull NSData *)deviceToken;

-(void)application:(UIApplication*_Nullable) application didReceiveRemoteNotification:(nonnull NSDictionary *)userInfo;

@end
