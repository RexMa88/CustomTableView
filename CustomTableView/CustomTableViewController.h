//
//  CustomTableViewController.h
//  CustomTableView
//
//  Created by 新华视讯 on 15/8/25.
//  Copyright (c) 2015年 RexMa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewController : UIViewController
/**
 *  视图:TableView
 */
@property (weak, nonatomic) IBOutlet UITableView *tableView;
/**
 *  分页:记录页码
 */
@property (assign, nonatomic) int page;
/**
 *  数据源
 */
@property (strong, nonatomic) NSMutableArray *dataArray;

@end

@interface CustomTableViewCell : UITableViewCell

@property (strong, nonatomic) UIImageView *headerImg;

@property (strong, nonatomic) UILabel *titleLabel;

- (void)useMasonryLayout;

@end