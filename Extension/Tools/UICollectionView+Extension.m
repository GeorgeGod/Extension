//
//  UICollectionView+Extension.m
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UICollectionView+Extension.h"

@implementation UICollectionView (Extension)


+(__kindof instancetype)obtainCollectionViewWithCtrl:(UIViewController *)ctrl {
    UICollectionViewFlowLayout *flow = [UICollectionViewFlowLayout new];
    flow.itemSize = CGSizeMake(200, 200);
    flow.headerReferenceSize = CGSizeZero;
    flow.footerReferenceSize = CGSizeZero;
    UICollectionView *col = [[UICollectionView alloc] initWithFrame:ctrl.view.bounds collectionViewLayout:flow];
    col.delegate = ctrl;
    col.dataSource = ctrl;
    col.backgroundColor = [UIColor whiteColor];
    return col;
}

/**
 注册头部
 
 @param clazz Header的类名
 */
-(void)registerHeader:(Class)clazz {
    [self registerClass:clazz forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass(clazz)];
}
-(void)registerXibHeader:(Class)clazz {
    UINib *nib = [UINib nibWithNibName:NSStringFromClass(clazz) bundle:[NSBundle mainBundle]];
    [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass(clazz)];
}



/**
 获取头部或尾部的视图

 @param kind 种类
 @param identifier id
 @param indexPath indexPath
 @return 返回复用视图
 */
-(__kindof UICollectionReusableView *)obtainReusableViewOfKind:(NSString *)kind identifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath {
    return [self dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:identifier forIndexPath:indexPath];
}


/**
 获取头部的视图

 @param identifier ID
 @param indexPath indexPath
 @return 返回复用视图
 */
-(__kindof UICollectionReusableView *)obtainHeaderWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath {
    return [self dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:identifier forIndexPath:indexPath];
}


/**
 获取尾部的视图

 @param identifier ID
 @param indexPath indexPath
 @return 返回复用视图
 */
-(__kindof UICollectionReusableView *)obtainFooterWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath {
    return [self dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:identifier forIndexPath:indexPath];
}


/**
 注册尾部
 
 @param clazz Footer的类名
 */
-(void)registerFooter:(Class)clazz {
    [self registerClass:clazz forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:NSStringFromClass(clazz)];
}
-(void)registerXibFooter:(Class)clazz {
    UINib *nib = [UINib nibWithNibName:NSStringFromClass(clazz) bundle:[NSBundle mainBundle]];
    [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:NSStringFromClass(clazz)];
}


/**
 注册一个不带XIB的Cell
 
 @param clazz Cell的类名
 */
-(void)registerCell:(Class)clazz {
    [self registerClass:clazz forCellWithReuseIdentifier:NSStringFromClass(clazz)];
}

/**
 注册一个带XIB的Cell
 
 @param clazz Cell的类名
 */
-(void)registerXibCell:(Class)clazz {
    UINib *nib = [UINib nibWithNibName:NSStringFromClass(clazz) bundle:[NSBundle mainBundle]];
    [self registerNib:nib forCellWithReuseIdentifier:NSStringFromClass(clazz)];
}

/**
获取不带XIB的Cell

@param clazz Cell的类名
@param indexPath indexPath
@return 返回Cell对象
*/
-(__kindof UICollectionViewCell *)obtainCell:(Class)clazz forIndexPath:(NSIndexPath *)indexPath {
    return [self dequeueReusableCellWithReuseIdentifier:NSStringFromClass(clazz) forIndexPath:indexPath];
}


/**
 获取带XIB的Cell
 
 @param clazz Cell的类名
 @param indexPath indexPath
 @return 返回Cell对象
 */
-(__kindof UICollectionViewCell *)obtainXibCell:(Class)clazz forIndexPath:(NSIndexPath *)indexPath {
    return [self dequeueReusableCellWithReuseIdentifier:NSStringFromClass(clazz) forIndexPath:indexPath];
}

@end
