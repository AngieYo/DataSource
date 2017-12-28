//
//  ArrayDataSource.h
//  Datasource
//
//  Created by zhaohang on 2017/11/22.
//  Copyright © 2017年 HangZhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void(^TableViewCellConfigureBlock)(id cell,id items);
@interface ArrayDataSource : NSObject<UITableViewDataSource>
//提供外部调用的接口
- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureBlock:(TableViewCellConfigureBlock)aConfigureBlock;
//将传入的数据按照cell的indexPath使用
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;
@end
