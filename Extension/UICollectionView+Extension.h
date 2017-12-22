//
//  UICollectionView+Extension.h
//  Extension
//
//  Created by admin on 2017/12/22.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (Extension)


/**
 注册头部

 @param clazz Header的类名
 */
-(void)registerHeader:(Class)clazz;
-(void)registerXibHeader:(Class)clazz;

/**
 注册尾部
 
 @param clazz Footer的类名
 */
-(void)registerFooter:(Class)clazz;
-(void)registerXibFooter:(Class)clazz;

/**
 获取头部或尾部的视图
 
 @param kind 种类
 @param identifier id
 @param indexPath indexPath
 @return 返回复用视图
 */
-(UICollectionReusableView *)obtainReusableViewOfKind:(NSString *)kind identifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath;


/**
 获取头部的视图
 
 @param identifier ID
 @param indexPath indexPath
 @return 返回复用视图
 */
-(UICollectionReusableView *)obtainHeaderWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath;


/**
 获取尾部的视图
 
 @param identifier ID
 @param indexPath indexPath
 @return 返回复用视图
 */
-(UICollectionReusableView *)obtainFooterWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath;

/**
 注册一个不带XIB的Cell

 @param clazz Cell的类名
 */
-(void)registerCell:(Class)clazz;

/**
 注册一个带XIB的Cell
 
 @param clazz Cell的类名
 */
-(void)registerXibCell:(Class)clazz;


/**
 获取不带XIB的Cell

 @param clazz Cell的类名
 @param indexPath indexPath
 @return 返回Cell对象
 */
-(UICollectionViewCell *)obtainCell:(Class)clazz forIndexPath:(NSIndexPath *)indexPath;


/**
 获取带XIB的Cell
 
 @param clazz Cell的类名
 @param indexPath indexPath
 @return 返回Cell对象
 */
-(UICollectionViewCell *)obtainXibCell:(Class)clazz forIndexPath:(NSIndexPath *)indexPath;
@end
