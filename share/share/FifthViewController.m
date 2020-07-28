//
//  FifthViewController.m
//  share
//
//  Created by young_jerry on 2020/7/20.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "FifthViewController.h"
#import "UpViewController.h"
#import "SetViewController.h"
#import "RecommendViewController.h"
#import "MessageViewController.h"
@interface FifthViewController ()

@end

@implementation FifthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage* image5 = [UIImage imageNamed:@"底部5.png"];
       UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:image5 tag:101];
       self.tabBarItem = tabBarItem;
    
     _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, 375, 586)  style:UITableViewStyleGrouped];
        
        //设置数据视图的代理对象
        _tableView.delegate = self;
        //设置数据视图的数据源对象
        _tableView.dataSource = self;
         
             
             [self.view addSubview:_tableView];
        
        _arrayData = [[NSMutableArray alloc]init];
             
        NSArray* array01 = [NSArray arrayWithObjects:@"", nil];
        NSArray* array02 = [NSArray arrayWithObjects:@"我上传的",@"我的信息",@"我推荐的",@"院系设置",@"设置",@"退出", nil];
        
         [_arrayData addObject:array01];
         [_arrayData addObject:array02];
        
        UIButton* btntouxiang = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btntouxiang setImage:[[UIImage imageNamed:@"头像.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        btntouxiang.titleLabel.text = @"头像";
        btntouxiang.titleLabel.font = [UIFont systemFontOfSize:10];
        btntouxiang.frame = CGRectMake(10,20,90,90);
        [_tableView addSubview:btntouxiang];
    
    UIButton* btnMy23 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
          [btnMy23 setImage:[[UIImage imageNamed:@"button_zan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
          btnMy23.frame = CGRectMake(120, 110 , 20, 15);
          [_tableView addSubview:btnMy23];
          
       UILabel *label21 = [[UILabel alloc]init];
       label21.frame = CGRectMake(145, 100, 40, 40);
       label21.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       label21.text = @"122";
       label21.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:label21];
    
    UIButton* btnMy24 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy24 setImage:[[UIImage imageNamed:@"button_guanzhu.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy24.frame = CGRectMake(190, 113 , 20, 15);
       [_tableView addSubview:btnMy24];
       
    UILabel *label22 = [[UILabel alloc]init];
    label22.frame = CGRectMake(215, 100, 40, 40);
    label22.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label22.text = @"12";
    label22.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:label22];
    
    UIButton* btnMy25 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy25 setImage:[[UIImage imageNamed:@"button_share.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy25.frame = CGRectMake(250, 110 , 20, 15);
       [_tableView addSubview:btnMy25];
       
    UILabel *label23 = [[UILabel alloc]init];
    label23.frame = CGRectMake(275, 100, 40, 40);
    label23.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label23.text = @"45";
    label23.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:label23];
    
        UILabel* label05 = [[UILabel alloc]init];
        label05.text = @"SHARE小白";
        label05.frame = CGRectMake(120, 20, 160, 40);
        [_tableView addSubview:label05];
        label05.font = [UIFont systemFontOfSize:18];
        _tableView.tableHeaderView = nil;
        _tableView.tableFooterView = nil;
           _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    UILabel* label04 = [[UILabel alloc]init];
    label04.text = @"数媒/设计爱好者";
    label04.frame = CGRectMake(120, 40, 90, 40);
    [_tableView addSubview:label04];
    label04.font = [UIFont systemFontOfSize:10];
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;
       _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    UILabel* label03 = [[UILabel alloc]init];
    label03.text = @"开心了就笑";
    label03.frame = CGRectMake(120, 70, 90, 40);
    [_tableView addSubview:label03];
    label03.font = [UIFont systemFontOfSize:14];
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;
       _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
     //获取每组元素的个数（行数）
     //必须要实现的协议函数
     //程序在显示数据视图是会调用此函数
     //返回值：表示每组元素的个数
     //p1: 数据视图对象本身
     //p2:那一组需要的行数
    -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
         NSInteger numRow = [[_arrayData objectAtIndex:section]count];
        return numRow;
     }

     //设置数据视图的组数
     -(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //     return 5;
         return _arrayData.count;
     }
    -(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //    NSString* cellStr = @"cell";
        //
    //         UITableViewCell* cell01 = [_tableView dequeueReusableCellWithIdentifier:cellStr];
        UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"cell"];
            if(cell == nil){
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            }
        cell.textLabel.textColor = [UIColor blackColor];
            cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
        cell.accessoryType = UITableViewCellAccessoryNone;
         UIImage* image1 = [UIImage imageNamed:@""];
                    cell.imageView.image = image1;
        if (indexPath.section == 1) {
            NSString* str = [NSString stringWithFormat:@"img%ld.png",indexPath.row % 6+2];
            UIImage* image2 = [UIImage imageNamed:str];
            cell.imageView.image = image2;
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
               
        }
            return cell;

    }

//点击后cell的响应
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    //每一个table的栏按钮
    UIBarButtonItem *item = [[UIBarButtonItem alloc] init];
    self.navigationItem.backBarButtonItem = item;
    
    if (indexPath.row == 0 && indexPath.section == 1) {
        item.title = @"我上传的";
        UpViewController *viewController = [[UpViewController alloc] init];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 1) {
        item.title = @"我的信息";
        MessageViewController *viewController = [[MessageViewController alloc] init];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 2) {
        item.title = @"我推荐的";
        RecommendViewController *viewController = [[RecommendViewController alloc] init];
        [self.navigationController pushViewController:viewController animated:NO];
    } else if (indexPath.row == 4) {
        item.title = @"设置";
        SetViewController *setViewController = [[SetViewController alloc] init];
        [self.navigationController pushViewController:setViewController animated:NO];
    } else if (indexPath.row == 3) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"您目前没有通知！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    } else if (indexPath.row == 5) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"不许退出!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];

        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    } 
}
    -(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
        return 0;
    }
    -(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
        return 0;
    }
    -(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
        if(indexPath.section == 0  ){
            return 130;
        }
        return 45;
    }
    -(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
        return [[UIView alloc]init];
    }
    -(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
    {
        return [[UIView alloc]init];
    }


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
