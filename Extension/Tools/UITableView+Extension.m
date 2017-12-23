//
//  UITableView+Extension.m
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UITableView+Extension.h"

@implementation UITableView (Extension)

+(instancetype)obtainTableViewWithCtrl:(UIViewController *)ctrl {
    
    UITableView *tb = [[UITableView alloc] initWithFrame:ctrl.view.bounds style:UITableViewStyleGrouped];
    tb.backgroundColor = [UIColor whiteColor];
    tb.delegate = ctrl;
    tb.dataSource = ctrl;
    tb.estimatedRowHeight = 44;
    tb.rowHeight = UITableViewAutomaticDimension;
    [ctrl.view addSubview:tb];
    return tb;
}

-(UITableViewCell *)obtainCell:(Class)clazz {
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:NSStringFromClass(clazz)];
    if (!cell) {
        cell = [[clazz alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:NSStringFromClass(clazz)];
    }
    return cell;
}
-(UITableViewCell *)obtainXibCell:(Class)clazz {
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:NSStringFromClass(clazz)];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(clazz) owner:nil options:nil] firstObject];
    }
    return cell;
}

@end
