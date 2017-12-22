//
//  ViewController.m
//  ExtensionDemo
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ViewController.h"
#import "Extension.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate>

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
    
//    UITableView *tb = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
//    tb.delegate = self;
//    tb.dataSource = self;
//    [self.view addSubview:tb];
    
    UICollectionViewFlowLayout *flow = [UICollectionViewFlowLayout new];
    flow.itemSize = CGSizeMake(200, 200);
    flow.headerReferenceSize = CGSizeZero;
    flow.footerReferenceSize = CGSizeZero;
    UICollectionView *col = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flow];
    col.delegate = self;
    col.dataSource = self;
    col.backgroundColor = [UIColor whiteColor];
//    col dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"UICollectionReusableView" forIndexPath:
    [col registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:UICollectionElementKindSectionHeader];
    [col registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:UICollectionElementKindSectionFooter];
//    [col registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    [self.view addSubview:col];
}

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
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell" forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[UICollectionViewCell alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    }
    cell.backgroundColor = [UIColor greenColor];
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}
@end
