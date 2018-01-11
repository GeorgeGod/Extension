//
//  ViewController.m
//  ExtensionDemo
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ViewController.h"
#import "Extension.h"
#import "UITextField+Extension.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate, UINavigationBarDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = UIColor.randomColor; //[UIColor lightGrayColor];
    
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSString* File = [[NSBundle mainBundle] pathForResource:@"info" ofType:@"plist"];
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] initWithContentsOfFile:File];
    NSLog(@"----0000----:%@", dict);
    
    self.title = @"主页";
    self.leftBarButtonItem(@"back_gray".image(), ^(UIBarButtonItem *item) {
        NSLog(@"======aa");
//        [self.navigationController popViewControllerAnimated:YES];
        self.popCtrl();
    });
    self.rightBarButtonItem(@"右", ^(UIBarButtonItem *item) {
        NSLog(@"======bb");
        
//        [self.navigationController pushViewController:[ViewController new] animated:YES];
        self.pushCtrl([ViewController new]);
    });
//    self.navigationController.navigationBar.delegate = self;
    
    NSArray *arr = @[
                     [VEntity VEntity:"name" detail:"张三" holder:"xin"].showArrow(YES).showToggle(YES),
                     ];
//    self.rightBarButtonItem(@"右").
    
//    double res = @(32).scale();
    
    NSURL *url = @"www.baidu.com".url();
    
    UITextField *tf = [UITextField new];
    [UITextField new].Text(@"").Holder(@"").Delegate(self).Enable(YES);
    
    @"".image();
    @"".imageView();
    
    self.judgeCode(@{});
    
//    [Http new].post(@"").params(@{}).complete(^(NSDictionary *json) {
//
//    }, ^(NSError *error) {
//
//    });
    
    [UIMessage showSuccessMessage:@"ssss" Complete:nil];
    
    [Http shareHttps].post(@"").params(@{}).pictures(@[]).complete(^(NSDictionary *json) {
        
        NSLog(@"sss");
    }, ^(NSError *error) {
        NSLog(@"ddd");
    }, ^(NSString *errmsg) {
        NSLog(@"aaa:%@", errmsg);
    });
    
    
//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 44)];
//    btn.backgroundColor = [UIColor redColor];
//    btn.backColor = [UIColor greenColor];
//    [self.view addSubview:btn];
//    [btn addTarget:self selector:@selector(btnAction:)];
    
//    UITableView *tb = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
//    tb.delegate = self;
//    tb.dataSource = self;
//    [self.view addSubview:tb];
    
//    UICollectionViewFlowLayout *flow = [UICollectionViewFlowLayout new];
//    flow.itemSize = CGSizeMake(200, 200);
//    flow.headerReferenceSize = CGSizeZero;
//    flow.footerReferenceSize = CGSizeZero;
//    UICollectionView *col = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flow];
//    col.delegate = self;
//    col.dataSource = self;
//    col.backgroundColor = [UIColor whiteColor];

    UICollectionView *col = [UICollectionView obtainCollectionViewWithCtrl:self];
    [col registerCell:[UICollectionViewCell class]];
    
//    col dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"UICollectionReusableView" forIndexPath:
//    [col registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:UICollectionElementKindSectionHeader];
//    [col registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:UICollectionElementKindSectionFooter];
//    [col registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    [self.view addSubview:col];
}

//-(void)leftBarButtonItemAction:(UIBarButtonItem *)leftBarButtonItem {
//    NSLog(@"aaCC");
//}

//- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPushItem:(UINavigationItem *)item {
//    return YES;
//}

//-(void)btnAction:(UIButton *)sender {
//    UIColor *color=sender.backColor;
//    NSLog(@"sss:%@", color);
//}




//- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
//
//    UILabelCell *cell = (UILabelCell *)[tableView obtainXibCell:[UILabelCell class]];
//
//    [cell assignCellWithData:@{@"data":@"hello"}];
//
//    return cell;
//}
//
//- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return 2;
//}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    return [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:kind forIndexPath:indexPath]; //[UICollectionReusableView new];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
//    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
//
//    if (!cell) {
//        cell = [[UICollectionViewCell alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
//    }
//    cell.backgroundColor = [UIColor greenColor];
//    return cell;
    UICollectionViewCell *cell = [collectionView obtainCell:[UICollectionViewCell class] forIndexPath:indexPath];
    cell.backgroundColor = [UIColor randomColor];
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}
@end
