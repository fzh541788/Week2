//
//  FourthViewController.h
//  share
//
//  Created by young_jerry on 2020/7/20.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FourthViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
      UITableView* _tableView;
      NSMutableArray* _arrayData;
}

@end

NS_ASSUME_NONNULL_END
