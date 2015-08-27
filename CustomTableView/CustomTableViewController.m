//
//  CustomTableViewController.m
//  CustomTableView
//
//  Created by 新华视讯 on 15/8/25.
//  Copyright (c) 2015年 RexMa. All rights reserved.
//

#import "CustomTableViewController.h"
#import <Masonry.h>

#define padding 10
#define margin 20

@interface CustomTableViewController ()<UITableViewDelegate, UITableViewDataSource>


@end

@implementation CustomTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark - getter and setter

- (NSMutableArray *)dataArray{
    return self.dataArray;
}

- (void)setDataArray:(NSMutableArray *)dataArray{
    self.dataArray = dataArray;
}

@end

@implementation CustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        self.headerImg = [[UIImageView alloc] init];
        self.titleLabel = [[UILabel alloc] init];
        self.titleLabel.backgroundColor = [UIColor redColor];
        self.titleLabel.text = @"This is a title";
        [self addSubview:self.headerImg];
        [self addSubview:self.titleLabel];
        [self useMasonryLayout];
    }
    
    return self;
}

- (void)useMasonryLayout{
    [self.headerImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).with.offset(padding);
        make.top.equalTo(self.mas_top).with.offset(padding);
        make.width.mas_equalTo(@30);
        make.height.mas_equalTo(@30);
    }];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.headerImg.mas_left).width.offset(margin);
        make.top.equalTo(self.mas_top).with.offset(padding);
    }];
}

#pragma mark - getter and setter

- (UILabel *)titleLabel{
    return self.titleLabel;
}

- (void)setTitleLabel:(UILabel *)titleLabel{
    self.titleLabel = titleLabel;
}

- (UIImageView *)headerImg{
    return self.headerImg;
}

- (void)setHeaderImg:(UIImageView *)headerImg{
    self.headerImg = headerImg;
}

@end
