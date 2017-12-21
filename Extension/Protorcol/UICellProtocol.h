//
//  UICellProtocol.h
//  Extension
//
//  Created by admin on 2017/12/21.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol UICellProtocol <NSObject>

@required
-(void)assignCellWithData:(id)data;

@optional
-(void)assignCellWithData:(id)data indexPath:(NSIndexPath *)indexPath;

@end
