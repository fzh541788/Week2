//
//  CareViewController.m
//  share
//
//  Created by young_jerry on 2020/7/26.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "CareViewController.h"

@interface CareViewController ()

@end

@implementation CareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, 375, 586)  style:UITableViewStyleGrouped];
                //设置数据视图的代理对象
                _tableView.delegate = self;
                //设置数据视图的数据源对象
                _tableView.dataSource = self;
                  [self.view addSubview:_tableView];
            
            _arrayData = [[NSMutableArray alloc]init];
                      
                 NSArray* array01 = [NSArray arrayWithObjects:@"",@"",@"",@"", nil];
                  [_arrayData addObject:array01];

    UIButton* btnMy1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy1 setImage:[[UIImage imageNamed:@"sixin_img1.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy1.titleLabel.font = [UIFont systemFontOfSize:10];
       btnMy1.frame = CGRectMake(30, 10, 80, 80);
       [_tableView addSubview:btnMy1];
    
        UIButton* btnMy2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btnMy2 setImage:[[UIImage imageNamed:@"sixin_img2.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        btnMy2.titleLabel.font = [UIFont systemFontOfSize:10];
        btnMy2.frame = CGRectMake(30, 110, 80, 80);
        [_tableView addSubview:btnMy2];
    
        UIButton* btnMy3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btnMy3 setImage:[[UIImage imageNamed:@"sixin_img3.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        btnMy3.titleLabel.font = [UIFont systemFontOfSize:10];
        btnMy3.frame = CGRectMake(30, 210, 80, 80);
        [_tableView addSubview:btnMy3];
    
        UIButton* btnMy4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btnMy4 setImage:[[UIImage imageNamed:@"sixin_img4.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        btnMy4.titleLabel.font = [UIFont systemFontOfSize:10];
        btnMy4.frame = CGRectMake(30, 310, 80, 80);
        [_tableView addSubview:btnMy4];
        
    UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btn1 setImage:[[UIImage imageNamed:@"guanzhu_normal.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btn1.titleLabel.font = [UIFont systemFontOfSize:10];
            [btn1
             addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
            btn1.frame = CGRectMake(270, 30, 70, 30);
            [_tableView addSubview:btn1];
        
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btn2 setImage:[[UIImage imageNamed:@"guanzhu_normal.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        btn2.titleLabel.font = [UIFont systemFontOfSize:10];
        btn2.frame = CGRectMake(270, 130, 70, 30);
    [btn2 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
        [_tableView addSubview:btn2];
    
    UIButton* btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btn3 setImage:[[UIImage imageNamed:@"guanzhu_normal.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        btn3.titleLabel.font = [UIFont systemFontOfSize:10];
        btn3.frame = CGRectMake(270, 230, 70, 30);
    [btn3 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
        [_tableView addSubview:btn3];
    
    UIButton* btn4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btn4 setImage:[[UIImage imageNamed:@"guanzhu_normal.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        btn4.titleLabel.font = [UIFont systemFontOfSize:10];
        btn4.frame = CGRectMake(270, 330, 70, 30);
    [btn4 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
        [_tableView addSubview:btn4];
    
       
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
     
                return 100;
        }

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
            return [[UIView alloc]init];
        }
-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
        {
            return [[UIView alloc]init];
        }
- (void)pressBtned:(UIButton *)btn{
     [btn setImage:[[UIImage imageNamed:@"guanzhu_normal.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
}

- (void)pressBtn:(UIButton *)btn{
     [btn setImage:[[UIImage imageNamed:@"guanzhu_pressed.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressBtned:) forControlEvents:UIControlEventTouchDown];
}
@end
