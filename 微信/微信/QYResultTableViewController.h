//
//  QYResultTableViewController.h
//  微信
//
//  Created by 青云-wjl on 15/9/22.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QYResultTableViewController : UITableViewController<UISearchResultsUpdating>
//设置搜索的数据源
@property (nonatomic, strong)NSArray *array;
@end
