//
//  SouSuoViewController.m
//  share
//
//  Created by young_jerry on 2020/7/25.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "SouSuoViewController.h"

@interface SouSuoViewController ()

@end

@implementation SouSuoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, 375, 586)  style:UITableViewStyleGrouped];
            //设置数据视图的代理对象
            _tableView.delegate = self;
            //设置数据视图的数据源对象
            _tableView.dataSource = self;
              [self.view addSubview:_tableView];
        
        _arrayData = [[NSMutableArray alloc]init];
                  
             NSArray* array01 = [NSArray arrayWithObjects:@"", nil];
             NSArray* array02 = [NSArray arrayWithObjects:@"", nil];
             
              [_arrayData addObject:array01];
              [_arrayData addObject:array02];
       
        
             UIButton* btnMy1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                [btnMy1 setImage:[[UIImage imageNamed:@"大白1.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                btnMy1.titleLabel.font = [UIFont systemFontOfSize:10];
                btnMy1.frame = CGRectMake(0, 0, 140, 140);
                [_tableView addSubview:btnMy1];
             
                 UIButton* btnMy2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                 [btnMy2 setImage:[[UIImage imageNamed:@"大白2.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                 btnMy2.titleLabel.font = [UIFont systemFontOfSize:10];
                 btnMy2.frame = CGRectMake(0, 140, 140, 140);
                 [_tableView addSubview:btnMy2];
    
           UILabel* label01 = [[UILabel alloc]init];
              label01.text = @"icon of Baymax";
              label01.frame = CGRectMake(160, 20, 140, 40);
              [_tableView addSubview:label01];
              label01.font = [UIFont systemFontOfSize:17];
              _tableView.tableHeaderView = nil;
              _tableView.tableFooterView = nil;

              UILabel* label02 = [[UILabel alloc]init];
              label02.text = @"share小白";
              label02.frame = CGRectMake(260, 40, 80, 40);
              [_tableView addSubview:label02];
              label02.font = [UIFont systemFontOfSize:13];
              _tableView.tableHeaderView = nil;
              _tableView.tableFooterView = nil;
              
              UILabel* label04 = [[UILabel alloc]init];
              label04.text = @"原创-UI-icon";
              label04.frame = CGRectMake(160, 28, 100, 100);
              [_tableView addSubview:label04];
              label04.font = [UIFont systemFontOfSize:10];
              _tableView.tableHeaderView = nil;
              _tableView.tableFooterView = nil;
              
              UILabel* label03 = [[UILabel alloc]init];
              label03.text = @"15分钟前";
              label03.frame = CGRectMake(160, 80, 80, 40);
              [_tableView addSubview:label03];
              label03.font = [UIFont systemFontOfSize:10];
              _tableView.tableHeaderView = nil;
              _tableView.tableFooterView = nil;
              
              UILabel* label05 = [[UILabel alloc]init];
              label05.text = @"大白";
              label05.frame = CGRectMake(160, 160, 120, 40);
              [_tableView addSubview:label05];
              label05.font = [UIFont systemFontOfSize:17];
              _tableView.tableHeaderView = nil;
              _tableView.tableFooterView = nil;

              UILabel* label06 = [[UILabel alloc]init];
              label06.text = @"share小王";
              label06.frame = CGRectMake(260, 175, 80, 40);
              [_tableView addSubview:label06];
              label06.font = [UIFont systemFontOfSize:13];
              _tableView.tableHeaderView = nil;
              _tableView.tableFooterView = nil;
              
              UILabel* label07 = [[UILabel alloc]init];
              label07.text = @"原创摄影-摄影";
              label07.frame = CGRectMake(160, 163, 100, 100);
              [_tableView addSubview:label07];
              label07.font = [UIFont systemFontOfSize:10];
              _tableView.tableHeaderView = nil;
              _tableView.tableFooterView = nil;
              
              UILabel* label08 = [[UILabel alloc]init];
              label08.text = @"16分钟前";
              label08.frame = CGRectMake(160, 215, 80, 40);
              [_tableView addSubview:label08];
              label08.font = [UIFont systemFontOfSize:10];
              _tableView.tableHeaderView = nil;
              _tableView.tableFooterView = nil;
    
    //关注
       UIButton* btnMy22 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy22 setImage:[[UIImage imageNamed:@"button_guanzhu.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy22.frame = CGRectMake(230,115, 20, 15);
       [_tableView addSubview:btnMy22];
       
       UIButton* btnMy23 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy23 setImage:[[UIImage imageNamed:@"button_guanzhu.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy23.frame = CGRectMake(230,255, 20, 15);
       [_tableView addSubview:btnMy23];
       
    UILabel *label21 = [[UILabel alloc]init];
    label21.frame = CGRectMake(255, 100, 40, 40);
    label21.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label21.text = @"122";
    label21.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:label21];
    
    UILabel *label22 = [[UILabel alloc]init];
    label22.frame = CGRectMake(255, 240, 40, 40);
    label22.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label22.text = @"145";
    label22.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:label22];
    
    UIButton* btnMy32 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy32 setImage:[[UIImage imageNamed:@"button_share.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy32.frame = CGRectMake(300,115, 20, 15);
       [_tableView addSubview:btnMy32];
       
       UIButton* btnMy33 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy33 setImage:[[UIImage imageNamed:@"button_share.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy33.frame = CGRectMake(300,255, 20, 15);
       [_tableView addSubview:btnMy33];
       
       UILabel *label30 = [[UILabel alloc]init];
       label30.frame = CGRectMake(325, 100, 40, 40);
       label30.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       label30.text = @"45";
       label30.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:label30];
       
       UILabel *label31 = [[UILabel alloc]init];
       label31.frame = CGRectMake(325, 240, 40, 40);
       label31.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       label31.text = @"54";
       label31.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:label31];
    
    UIButton* btnMy42 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy42 setImage:[[UIImage imageNamed:@"button_zan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy42.frame = CGRectMake(160,115, 20, 15);
       [_tableView addSubview:btnMy42];
       
       UIButton* btnMy43 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy43 setImage:[[UIImage imageNamed:@"button_zan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy43.frame = CGRectMake(160,255, 20, 15);
       [_tableView addSubview:btnMy43];
       
       UILabel *label40 = [[UILabel alloc]init];
       label40.frame = CGRectMake(185, 100, 40, 40);
       label40.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       label40.text = @"65";
       label40.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:label40];
       
       UILabel *label41 = [[UILabel alloc]init];
       label41.frame = CGRectMake(185, 240, 40, 40);
       label41.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       label41.text = @"54";
       label41.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:label41];
    
              
    }
    -(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
        UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"cell"];
            if(cell == nil){
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            }
            cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
        cell.accessoryType = UITableViewCellAccessoryNone;
//        UIImage* image1 = [UIImage imageNamed:@""];
//        cell.imageView.image = image1;
//         if(indexPath.row == 1){
//             cell.textLabel.font = [UIFont systemFontOfSize:10];
//         }
            return cell;

    }
    -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
         NSInteger numRow = [[_arrayData objectAtIndex:section]count];
        return numRow;
     }

     //设置数据视图的组数
     -(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //     return 5;
         return _arrayData.count;
     }
    -(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
        return 0;
    }
    -(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
        return 0;
    }
    -(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

            return 140;
    }
    -(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
        return [[UIView alloc]init];
    }
    -(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
    {
        return [[UIView alloc]init];
    }
@end
