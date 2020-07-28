//
//  UpViewController.h
//  share
//
//  Created by young_jerry on 2020/7/26.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpViewController : UIViewController
<
UIScrollViewDelegate,
UITableViewDelegate,
UITableViewDataSource
>

@property UIScrollView *scrollView;
@property UITableView *tableView1;
@property UITableView *tableView2;
@property UITableView *tableView3;
//分段控制器
@property UISegmentedControl *segmentedControl;
@end
NS_ASSUME_NONNULL_END
