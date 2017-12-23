//
//  UINavigationController+Extension.m
//  Extension
//
//  Created by 虞嘉伟 on 2017/12/23.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UINavigationController+Extension.h"
#import "UIColor+Extension.h"
#import "UIFont+Extension.h"

@implementation UINavigationController (Extension)

-(void)display {
    self.view.backgroundColor = [UIColor whiteColor];
    UINavigationBar *bar = self.navigationBar;
    
    bar.translucent = YES;
    bar.barStyle = UIBarStyleDefault; //UIBarStyleBlack:纯白色
    bar.barTintColor = [UIColor whiteColor]; //导航栏的背景颜色
    bar.tintColor = [UIColor redColor]; //导航栏的左右按钮的颜色
    bar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor colorWithHexStr:@"#030303"], NSFontAttributeName:[UIFont RegularFont:17]};
}

/**
 设置导航控制器的根控制器
 
 @param rootViewController 根控制器
 @return 导航控制器对象
 */
+(instancetype)RootViewCtrl:(UIViewController *)rootViewController {
    if (!rootViewController) {
        NSLog(@"导航控制器的根控制器不能为空！");
        rootViewController = [UIViewController new];
    }
    UINavigationController *navigationCtrl = [[UINavigationController alloc] initWithRootViewController:rootViewController];
    return navigationCtrl;
}
@end
