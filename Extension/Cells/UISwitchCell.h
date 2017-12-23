//
//  UISwitchCell.h
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIBaseCell.h"

@interface UISwitchCell : UIBaseCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UISwitch *mSwitch;
@property (weak, nonatomic) IBOutlet UIView *line;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *marginRight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lineEdgeLeft;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lineEdgeRight;

@end
