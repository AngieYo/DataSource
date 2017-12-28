//
//  ViewController.m
//  Datasource
//
//  Created by zhaohang on 2017/11/22.
//  Copyright © 2017年 HangZhao. All rights reserved.
//

#import "ViewController.h"
#import "ArrayDataSource.h"
#import "MyTableViewCell.h"
@interface ViewController ()
@property (nonatomic , strong) NSArray *arr;
@property (nonatomic , strong) UITableView *tableView;
@property (nonatomic , strong) ArrayDataSource *dataSource;
@property (nonatomic , assign) BOOL ah;
@end

@implementation ViewController
- (NSArray *)arr {
    
    if (!_arr) {
        _arr = @[@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"},@{@"name":@"实现tableViewController的瘦身"}];
    }
    return _arr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    if(!self.ah){
        NSLog(@"jjjjjjj");
    }
    [self createTable];
}

- (void)createTable{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:(UITableViewStylePlain)];
    [self.tableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.rowHeight = 44;
    [self.view addSubview:self.tableView];
    TableViewCellConfigureBlock configureBlock = ^(MyTableViewCell *cell, NSDictionary *dic){
        [cell configureData:dic];
    };
    self.dataSource = [[ArrayDataSource alloc] initWithItems:self.arr cellIdentifier:@"cell" configureBlock:configureBlock];
    self.tableView.dataSource = self.dataSource;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
