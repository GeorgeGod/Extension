//
//  ViewController.m
//  ExtensionDemo
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ViewController.h"
#import "Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 44)];
    btn.backgroundColor = [UIColor redColor];
    btn.backColor = [UIColor greenColor];
    [self.view addSubview:btn];
    [btn addTarget:self selector:@selector(btnAction:)];
}

-(void)btnAction:(UIButton *)sender {
    UIColor *color=sender.backColor;
    NSLog(@"sss:%@", color);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
