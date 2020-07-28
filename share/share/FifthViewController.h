//
//  FifthViewController.h
//  share
//
//  Created by young_jerry on 2020/7/20.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FifthViewController : UIViewController
<UITableViewDelegate,UITableViewDataSource>
{
    //定义一个数据视图对象
    //数据视图用来显示大量相同格式的信息的视图
    //例如：电话通讯录，qq好友，朋友圈信息
    UITableView* _tableView;
    NSMutableArray* _arrayData;
    UISwitch* _Switch;
}
@end

NS_ASSUME_NONNULL_END
