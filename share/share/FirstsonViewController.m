//
//  FirstsonViewController.m
//  share
//
//  Created by young_jerry on 2020/7/27.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "FirstsonViewController.h"

@interface FirstsonViewController ()

@end

@implementation FirstsonViewController

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
                      
                 NSArray* array01 = [NSArray arrayWithObjects:@"",@"多希望列车能把我带到有你的城市",@"", nil];
                  [_arrayData addObject:array01];
        
        //头像
        UIButton* btnMy1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                 [btnMy1 setImage:[[UIImage imageNamed:@"list_img1.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                 btnMy1.titleLabel.font = [UIFont systemFontOfSize:10];
                 btnMy1.frame = CGRectMake(5, 5, 90, 90);
                 [_tableView addSubview:btnMy1];
        
        //3个按钮
        UIButton* btnMy5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
           [btnMy5 setImage:[[UIImage imageNamed:@"button_zan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
           btnMy5.frame = CGRectMake(180, 70, 20, 20);
           [_tableView addSubview:btnMy5];
        
           UILabel* zanlabel = [[UILabel alloc]init];
           zanlabel.frame = CGRectMake(205, 60, 40, 40);
           zanlabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
           zanlabel.text = @"102";
           zanlabel.font = [UIFont systemFontOfSize:12];
           [_tableView addSubview:zanlabel];
        
        UIButton* btnMy20 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                         [btnMy20 setImage:[[UIImage imageNamed:@"button_guanzhu.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                         btnMy20.frame = CGRectMake(250,72, 20, 15);
                        
                         [_tableView addSubview:btnMy20];
        
        UILabel *label20 = [[UILabel alloc]init];
        label20.frame = CGRectMake(275, 60, 40, 40);
        label20.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        label20.text = @"122";
        label20.font = [UIFont systemFontOfSize:12];
        [_tableView addSubview:label20];
                 
        UIButton* btnMy30 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
              [btnMy30 setImage:[[UIImage imageNamed:@"button_share.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
              btnMy30.frame = CGRectMake(320,72, 20, 15);
              [_tableView addSubview:btnMy30];
        
        UILabel *label30 = [[UILabel alloc]init];
              label30.frame = CGRectMake(345, 60, 40, 40);
              label30.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
              label30.text = @"45";
              label30.font = [UIFont systemFontOfSize:12];
              [_tableView addSubview:label30];
        
        UILabel* label13 = [[UILabel alloc]init];
        label13.text = @"假日";
        label13.numberOfLines = 0;
        label13.frame = CGRectMake(100, 0, 180, 60);
        [_tableView addSubview:label13];
        label13.font = [UIFont systemFontOfSize:17];
        _tableView.tableHeaderView = nil;
        _tableView.tableFooterView = nil;

        UILabel* label14 = [[UILabel alloc]init];
        label14.text = @"share小白";
        label14.frame = CGRectMake(100, 40, 80, 40);
        [_tableView addSubview:label14];
        label14.font = [UIFont systemFontOfSize:13];
        _tableView.tableHeaderView = nil;
        _tableView.tableFooterView = nil;
        
        UILabel* label16 = [[UILabel alloc]init];
        label16.text = @"18分钟前";
        label16.frame = CGRectMake(300, 10, 80, 40);
        [_tableView addSubview:label16];
        label16.font = [UIFont systemFontOfSize:10];
        _tableView.tableHeaderView = nil;
        _tableView.tableFooterView = nil;
        
        UIButton* btn01 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                     [btn01 setImage:[[UIImage imageNamed:@"works_img1.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                     btn01.frame = CGRectMake(0,165, 392, 200);
                     [_tableView addSubview:btn01];
        
        
               UIButton* btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                            [btn02 setImage:[[UIImage imageNamed:@"works_img2.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                            btn02.frame = CGRectMake(0,373, 392, 200);
                            [_tableView addSubview:btn02];
        
        
               UIButton* btn03 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                            [btn03 setImage:[[UIImage imageNamed:@"works_img3.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                            btn03.frame = CGRectMake(98,581, 200, 300);
                            [_tableView addSubview:btn03];
        
        
               UIButton* btn04 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                            [btn04 setImage:[[UIImage imageNamed:@"works_img4.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                            btn04.frame = CGRectMake(0,889, 392, 200);
                            [_tableView addSubview:btn04];
        
        
               UIButton* btn05 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                            [btn05 setImage:[[UIImage imageNamed:@"works_img5.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                            btn05.frame = CGRectMake(98,1097, 200, 300);
                            [_tableView addSubview:btn05];
    }
    -(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
            UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"cell"];
                if(cell == nil){
                    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
                }
                cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
            cell.accessoryType = UITableViewCellAccessoryNone;
            UIImage* image1 = [UIImage imageNamed:@""];
            cell.imageView.image = image1;
        if(indexPath.row == 1){
            cell.textLabel.font = [UIFont systemFontOfSize:14];
        }else if(indexPath.row == 2){
        }
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
        -(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
            if(indexPath.row == 0){
                return 100;
            }if(indexPath.row == 1){
                return 40;
            }
                return 1270;
        }
        -(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
            return [[UIView alloc]init];
        }
        -(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
        {
            return [[UIView alloc]init];
        }
@end
