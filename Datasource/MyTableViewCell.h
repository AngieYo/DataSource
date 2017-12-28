//
//  MyTableViewCell.h
//  Datasource
//
//  Created by zhaohang on 2017/11/22.
//  Copyright © 2017年 HangZhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell
@property (nonatomic , strong) UILabel *myLabel;

-(void)configureData:(NSDictionary *)dict;
@end
