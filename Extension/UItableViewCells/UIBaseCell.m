//
//  UIBaseCell.m
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UIBaseCell.h"

@implementation UIBaseCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)assignCellWithData:(id)data {
    NSLog(@"你需要实现UIBaseCell的 %@ 方法", NSStringFromSelector(_cmd));
}
-(void)assignCellWithData:(id)data indexPath:(NSIndexPath *)indexPath {
    NSLog(@"你需要实现UIBaseCell的 %@ 方法", NSStringFromSelector(_cmd));
}
@end
