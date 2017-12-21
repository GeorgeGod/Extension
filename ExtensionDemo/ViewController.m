//
//  ViewController.m
//  ExtensionDemo
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ViewController.h"
#import "Extension.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 44)];
//    btn.backgroundColor = [UIColor redColor];
//    btn.backColor = [UIColor greenColor];
//    [self.view addSubview:btn];
//    [btn addTarget:self selector:@selector(btnAction:)];
    
    UITableView *tb = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tb.delegate = self;
    tb.dataSource = self;
    [self.view addSubview:tb];
}

//-(void)btnAction:(UIButton *)sender {
//    UIColor *color=sender.backColor;
//    NSLog(@"sss:%@", color);
//}




- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UILabelCell *cell = (UILabelCell *)[tableView obtainXibCell:[UILabelCell class]];
    
//    [cell.delegate assignCellWithData:@{@"data":@"hello"}];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}


@end
