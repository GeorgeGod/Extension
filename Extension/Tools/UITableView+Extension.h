//
//  UITableView+Extension.h
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Extension)

+(__kindof instancetype)obtainTableViewWithCtrl:(UIViewController *)ctrl;

/**
 获取不带XIB的Cell
 
 @param clazz Cell的类名
 @return 返回Cell对象
 */
-(__kindof UITableViewCell *)obtainCell:(Class)clazz;


/**
 获取带XIB的Cell
 
 @param clazz Cell的类名
 @return 返回Cell对象
 */
-(__kindof UITableViewCell *)obtainXibCell:(Class)clazz;

@end
