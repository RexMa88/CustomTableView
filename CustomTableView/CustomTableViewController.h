//
//  CustomTableViewController.h
//  CustomTableView
//
//  Created by 新华视讯 on 15/8/25.
//  Copyright (c) 2015年 RexMa. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum TableViewType{
    TableViewTypeGrouped,
    TableViewTypePlain
}TableViewType;

@interface CustomTableViewController : UIViewController
/**
 *  视图:TableView
 */
@property (strong, nonatomic) UITableView *tableView;
/**
 *  分页:记录页码
 */
@property (assign, nonatomic) int page;
/**
 *  表视图初始化大小
 *
 *  @param rect          大小
 *  @param tableViewType 表视图种类
 *
 *  @return tableView实例
 */
- (id)initWithFrame:(CGRect)rect withType:(TableViewType)tableViewType;

@end
