//
//  UIViewController+Extension.h
//  Extension
//
//  Created by 虞嘉伟 on 2017/12/23.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ItemClickedBlock)(UIBarButtonItem *item);

@interface UIViewController (Extension)

/*
 *  传入的item可以是字符串也可以是图片。
 *  action是点击按钮的block回调。
 *  如果回调的内容过多，可以考虑在控制器中重写下面的两个方法。（默认优先执行下面的方法）
 */
@property (nonatomic, copy , readonly) UIViewController * (^leftBarButtonItem)(id item, ItemClickedBlock action);
@property (nonatomic, copy , readonly) UIViewController * (^rightBarButtonItem)(id item, ItemClickedBlock action);

//override
-(void)leftBarButtonItemAction:(UIBarButtonItem *)leftBarButtonItem;
-(void)rightBarButtonItemAction:(UIBarButtonItem *)rightBarButtonItem;



@property (nonatomic, copy , readonly) void (^pushCtrl)(UIViewController *ctrl);
@property (nonatomic, copy , readonly) void (^popCtrl)(void);


//-(void)pushCtrl:(UIViewController *)ctrl;
//-(void)popCtrl;
@end
