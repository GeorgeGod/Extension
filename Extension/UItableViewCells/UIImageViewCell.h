//
//  UIImageViewCell.h
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIBaseCell.h"

@interface UIImageViewCell : UIBaseCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIView *line;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *marginRight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lineEdgeLeft;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lineEdgeRight;

@end
