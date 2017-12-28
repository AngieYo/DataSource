//
//  MyTableViewCell.m
//  Datasource
//
//  Created by zhaohang on 2017/11/22.
//  Copyright © 2017年 HangZhao. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _myLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 5, [UIScreen mainScreen].bounds.size.width, 40)];
        _myLabel.backgroundColor = [UIColor greenColor];
        _myLabel.textColor = [UIColor redColor];
        _myLabel.textAlignment = NSTextAlignmentCenter;
        _myLabel.font = [UIFont systemFontOfSize:25];
        self.contentView.backgroundColor = [UIColor blueColor];
        [self.contentView addSubview:_myLabel];
    }
    return self;
}

-(void)configureData:(NSDictionary *)dict{
    _myLabel.text = dict[@"name"];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
