//
//  ArrayDataSource.m
//  Datasource
//
//  Created by zhaohang on 2017/11/22.
//  Copyright © 2017年 HangZhao. All rights reserved.
//

#import "ArrayDataSource.h"
//声明三个变量
@interface ArrayDataSource()
@property (nonatomic , strong) NSArray *items;
@property (nonatomic , strong) NSString *identifier;
@property (nonatomic , copy) TableViewCellConfigureBlock configureBlock;
@end
@implementation ArrayDataSource
//实现.h中的方法
-(instancetype)init{
    return nil;
}
//调用初始化方法将外部数据赋值给内部参数
- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureBlock:(TableViewCellConfigureBlock)aConfigureBlock{
    self = [super init];
    if (self) {
        self.items = anItems;
        self.identifier = aCellIdentifier;
        self.configureBlock = aConfigureBlock;
    }
    return self;
}
//根据cell的索引将传入的数据分离
- (id)itemAtIndexPath:(NSIndexPath *)indexPath{
    return self.items[(NSUInteger) indexPath.row];
}
//实现UITableDataSource的方法
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.items.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.identifier];
    id item = [self itemAtIndexPath:indexPath];
    self.configureBlock(cell, item);
    return cell;
}
@end


