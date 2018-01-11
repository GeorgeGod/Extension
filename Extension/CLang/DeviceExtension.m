//
//  DeviceExtension.m
//  Extension
//
//  Created by admin on 2017/12/26.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "DeviceExtension.h"

@implementation DeviceExtension

NSString *kCurrentLanguage() {
    return [NSLocale preferredLanguages].firstObject;
}

//BOOL isPad() {
//    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad);
//}

@end
