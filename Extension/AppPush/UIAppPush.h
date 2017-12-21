//
//  UIAppPush.h
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAppPush : NSObject

-(void)application:(UIApplication*) application didRegisterForRemoteNotificationsWithDeviceToken:(nonnull NSData *)deviceToken;

-(void)application:(UIApplication*) application didReceiveRemoteNotification:(nonnull NSDictionary *)userInfo;

@end
