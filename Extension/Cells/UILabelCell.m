//
//  UILabelCell.m
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "UILabelCell.h"

@implementation UILabelCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
//    self.delegate = self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)assignCellWithData:(id)data {
    NSLog(@"ss:%@", data);
}

@end
