//
//  ZiliaoViewController.m
//  share
//
//  Created by young_jerry on 2020/7/27.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ZiliaoViewController.h"

@interface ZiliaoViewController ()
@property BOOL man;
@property UIButton *manButton;
@property UIButton *womanButton;
@end

@implementation ZiliaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _man = YES;
    // Do any additional setup after loading the view.
     _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, 375, 586)  style:UITableViewStyleGrouped];
            //设置数据视图的代理对象
            _tableView.delegate = self;
            //设置数据视图的数据源对象
            _tableView.dataSource = self;
              [self.view addSubview:_tableView];
        
        _arrayData = [[NSMutableArray alloc]init];
                  
             NSArray* array01 = [NSArray arrayWithObjects:@"     头像",@"     昵称",@"     签名",@"     性别",@"     邮箱", nil];
              [_arrayData addObject:array01];

    UIButton* btnMy23 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy23 setImage:[[UIImage imageNamed:@"头像.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy23.frame = CGRectMake(220,10, 80, 80);
       [_tableView addSubview:btnMy23];
       
    UILabel *label20 = [[UILabel alloc]init];
    label20.frame = CGRectMake(220, 110, 100, 40);
    label20.text = @"SHARE小白";
    label20.font = [UIFont systemFontOfSize:15];
    [_tableView addSubview:label20];
    
    UILabel *label21 = [[UILabel alloc]init];
    label21.frame = CGRectMake(220, 170, 80, 40);
    label21.text = @"开心了就笑";
    label21.font = [UIFont systemFontOfSize:15];
    [_tableView addSubview:label21];
    
    UILabel *label22 = [[UILabel alloc]init];
    label22.frame = CGRectMake(200, 290, 150, 40);
    label22.text = @"494478066@qq.com";
    label22.font = [UIFont systemFontOfSize:15];
    [_tableView addSubview:label22];
    
    UILabel *label23 = [[UILabel alloc]init];
       label23.frame = CGRectMake(240, 240, 20, 20);
       label23.text = @"男";
       label23.font = [UIFont systemFontOfSize:15];
       [_tableView addSubview:label23];
    
    UILabel *label24 = [[UILabel alloc]init];
       label24.frame = CGRectMake(290, 240, 20, 20);
       label24.text = @"女";
       label24.font = [UIFont systemFontOfSize:15];
       [_tableView addSubview:label24];
    
     _manButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _manButton.frame = CGRectMake(220,240, 20, 20);
     [_manButton setImage:[[UIImage imageNamed:@"boy_button.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    [_manButton
          addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchDown];
    [_tableView addSubview:_manButton];

    
       _womanButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
     [_womanButton setImage:[[UIImage imageNamed:@"girl_button.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    [_womanButton
          addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchDown];
    _womanButton.frame = CGRectMake(270,240, 20, 20);

    [_tableView addSubview:_womanButton];
        
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
        if(indexPath.row == 0)
            return 100;
            return 60;
    }
    -(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
        return [[UIView alloc]init];
    }
    -(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
    {
        return [[UIView alloc]init];
    }
- (void)press{
    
    if(_man == YES) {
        _man = NO;
        [_manButton setImage:[[UIImage imageNamed:@"girl_button.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        [_womanButton setImage:[[UIImage imageNamed:@"boy_button.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    } else {
        _man = YES;
        [_manButton setImage:[[UIImage imageNamed:@"boy_button.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
      [_womanButton setImage:[[UIImage imageNamed:@"girl_button.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    }
    
}

//- (void)pressBtn:(UIButton *)btn{
//     [btn setImage:[[UIImage imageNamed:@"boy_button.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(pressBtned:) forControlEvents:UIControlEventTouchDown];
//}
//- (void)pressBtned:(UIButton *)btn{
//     [btn setImage:[[UIImage imageNamed:@"girl_button.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
//}
@end
