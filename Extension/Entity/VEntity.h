//
//  VEntity.h
//  Extension
//
//  Created by 虞嘉伟 on 2017/12/23.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, UICellType) {
    UICellTypeDefault = 0,
    UICellTypeImageView,
    UICellTypeLabel,
    UICellTypeSwitch,
    UICellTypeTextField = UICellTypeDefault,
};

@interface VEntity : NSObject

@property (nonatomic, copy , readwrite) NSString *title;
@property (nonatomic, copy , readwrite) NSString *detail;
@property (nonatomic, copy , readwrite) NSString *holder;
@property (nonatomic, assign) UICellType type;

@property (nonatomic, assign) BOOL toggle;
@property (nonatomic, assign) BOOL arrow;
@property (nonatomic, assign, readonly) VEntity *(^showToggle)(BOOL toggle);
@property (nonatomic, assign, readonly) VEntity *(^showArrow)(BOOL arrow);
@property (nonatomic, assign, readonly) VEntity *(^cellType)(UICellType type);


+(instancetype)VEntity:(char *)title detail:(char *)detail holder:(char *)holder;

@end
