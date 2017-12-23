//
//  UIViewController+Extension.m
//  Extension
//
//  Created by 虞嘉伟 on 2017/12/23.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIViewController+Extension.h"
#import <objc/runtime.h>

@implementation UIViewController (Extension)

-(UIViewController *(^)(id, ItemClickedBlock))leftBarButtonItem {
    //左按钮
    __weak typeof(self) weakSelf = self;
    return ^(id item, ItemClickedBlock action) {
        objc_setAssociatedObject(self, @"kLAction", action, OBJC_ASSOCIATION_COPY_NONATOMIC);
        
        UIBarButtonItem *gap = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
        gap.width = -5;
        
        if ([item isKindOfClass:[NSString class]]) {
            
            UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:item style:UIBarButtonItemStylePlain target:weakSelf action:@selector(leftBarButtonItemAction:)];
            
            weakSelf.navigationItem.leftBarButtonItems = @[gap, leftItem];
            
        } else if ([item isKindOfClass:[UIImage class]]) {
            
            UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:item style:UIBarButtonItemStylePlain target:weakSelf action:@selector(leftBarButtonItemAction:)];
            weakSelf.navigationItem.leftBarButtonItems = @[gap, leftItem];
        }
        return self;
    };
}

-(UIViewController *(^)(id, ItemClickedBlock))rightBarButtonItem {
    //右按钮
    __weak typeof(self) weakSelf = self;
    return ^(id item, ItemClickedBlock action) {
        objc_setAssociatedObject(self, @"kRAction", action, OBJC_ASSOCIATION_COPY_NONATOMIC);
        
        UIBarButtonItem *gap = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
        gap.width = -5;
        
        if ([item isKindOfClass:[NSString class]]) {
            
            UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:item style:UIBarButtonItemStylePlain target:weakSelf action:@selector(rightBarButtonItemAction:)];
            
            weakSelf.navigationItem.rightBarButtonItems = @[gap, rightItem];
            
        } else if ([item isKindOfClass:[UIImage class]]) {
            
            UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithImage:item style:UIBarButtonItemStylePlain target:weakSelf action:@selector(rightBarButtonItemAction:)];
            weakSelf.navigationItem.rightBarButtonItems = @[gap, rightItem];
        }
        
        return self;
    };
}

-(void)leftBarButtonItemAction:(UIBarButtonItem *)leftBarButtonItem {
    ItemClickedBlock click = objc_getAssociatedObject(self, @"kLAction");
    if (click) {
        click(leftBarButtonItem);
    }
}
-(void)rightBarButtonItemAction:(UIBarButtonItem *)rightBarButtonItem {
    ItemClickedBlock click = objc_getAssociatedObject(self, @"kRAction");
    if (click) {
        click(rightBarButtonItem);
    }
}



-(void (^)(UIViewController *))pushCtrl {
    return ^(UIViewController *ctrl) {
        [self.navigationController pushViewController:ctrl animated:YES];
    };
}
-(void (^)(void))popCtrl {
    return ^() {
        [self.navigationController popViewControllerAnimated:YES];
    };
}

@end
