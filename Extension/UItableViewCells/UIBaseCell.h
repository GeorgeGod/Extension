//
//  UIBaseCell.h
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UICellProtocol.h"

@interface UIBaseCell : UITableViewCell // <UICellProtocol>

-(void)assignCellWithData:(id)data;
-(void)assignCellWithData:(id)data indexPath:(NSIndexPath *)indexPath;
//@property (nonatomic,weak   ) id<UICellProtocol>delegate;
@end
