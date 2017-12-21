//
//  UILabelCell.h
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIBaseCell.h"

@interface UILabelCell : UIBaseCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *detail;
@property (weak, nonatomic) IBOutlet UIView *line;

//详情距离右边的距离约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *marginRight;

//分割线距离左边的约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lineEdgeLeft;

//分割线距离右边的约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lineEdgeRight;

@end
