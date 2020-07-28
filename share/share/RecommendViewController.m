//
//  RecommendViewController.m
//  share
//
//  Created by young_jerry on 2020/7/26.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "RecommendViewController.h"

@interface RecommendViewController ()

@end

@implementation RecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage* image4 = [UIImage imageNamed:@"底部4.png"];
       UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:image4 tag:101];
       self.tabBarItem = tabBarItem;
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, 375, 586)  style:UITableViewStyleGrouped];
        //设置数据视图的代理对象
        _tableView.delegate = self;
        //设置数据视图的数据源对象
        _tableView.dataSource = self;
          [self.view addSubview:_tableView];
    
    _arrayData = [[NSMutableArray alloc]init];
              
         NSArray* array01 = [NSArray arrayWithObjects:@"", nil];
         NSArray* array02 = [NSArray arrayWithObjects:@"", nil];
         NSArray* array03 = [NSArray arrayWithObjects:@"", nil];
         NSArray* array04 = [NSArray arrayWithObjects:@"", nil];
         
          [_arrayData addObject:array01];
          [_arrayData addObject:array02];
          [_arrayData addObject:array03];
          [_arrayData addObject:array04];
    
    UIButton* btnMy1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
          [btnMy1 setImage:[[UIImage imageNamed:@"list_img1.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
          btnMy1.titleLabel.font = [UIFont systemFontOfSize:10];
          btnMy1.frame = CGRectMake(0, 0, 140, 140);
          [_tableView addSubview:btnMy1];
       
           UIButton* btnMy2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
           [btnMy2 setImage:[[UIImage imageNamed:@"list_img2.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
           btnMy2.titleLabel.font = [UIFont systemFontOfSize:10];
           btnMy2.frame = CGRectMake(0, 140, 140, 140);
           [_tableView addSubview:btnMy2];
       
           UIButton* btnMy3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
           [btnMy3 setImage:[[UIImage imageNamed:@"list_img3.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
           btnMy3.titleLabel.font = [UIFont systemFontOfSize:10];
           btnMy3.frame = CGRectMake(0, 280, 140, 140);
           [_tableView addSubview:btnMy3];
       
           UIButton* btnMy4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
           [btnMy4 setImage:[[UIImage imageNamed:@"list_img4.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
           btnMy4.titleLabel.font = [UIFont systemFontOfSize:10];
           btnMy4.frame = CGRectMake(0, 420, 140, 140);
           [_tableView addSubview:btnMy4];
       
       
       //4个点赞心图+后面数字
       
       
       UIButton* btnMy5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy5 setImage:[[UIImage imageNamed:@"button_zan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy5.frame = CGRectMake(160, 110, 20, 20);
       [_tableView addSubview:btnMy5];
    
    
       UILabel* zanlabel = [[UILabel alloc]init];
       zanlabel.frame = CGRectMake(185, 100, 40, 40);
       zanlabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       zanlabel.text = @"102";
       zanlabel.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:zanlabel];
       
       UIButton* btnMy6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy6 setImage:[[UIImage imageNamed:@"button_zan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy6.frame = CGRectMake(160, 250, 20, 20);
       [_tableView addSubview:btnMy6];
       
       UILabel* zanlabel2 = [[UILabel alloc]init];
       zanlabel2.frame = CGRectMake(185, 240, 40, 40);
       zanlabel2.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       zanlabel2.text = @"148";
       zanlabel2.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:zanlabel2];
       
       UIButton* btnMy7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy7 setImage:[[UIImage imageNamed:@"button_zan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy7.frame = CGRectMake(160, 390, 20, 20);
       [_tableView addSubview:btnMy7];
       
       UILabel* zanlabel3 = [[UILabel alloc]init];
       zanlabel3.frame = CGRectMake(185, 380, 40, 40);
       zanlabel3.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       zanlabel3.text = @"67";
       zanlabel3.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:zanlabel3];
       
       UIButton* btnMy8 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy8 setImage:[[UIImage imageNamed:@"button_zan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy8.frame = CGRectMake(160, 530, 20, 20);
       [_tableView addSubview:btnMy8];
       
       
       UILabel* zanlabel4 = [[UILabel alloc]init];
       zanlabel4.frame = CGRectMake(185, 520, 40, 40);
       zanlabel4.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       zanlabel4.text = @"102";
       zanlabel4.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:zanlabel4];
       
       
       //4个浏览次数图+次数
       UIButton* btnMy20 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                  [btnMy20 setImage:[[UIImage imageNamed:@"button_guanzhu.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                  btnMy20.frame = CGRectMake(230,112, 20, 15);
                 
                  [_tableView addSubview:btnMy20];
          
          UIButton* btnMy21 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
          [btnMy21 setImage:[[UIImage imageNamed:@"button_guanzhu.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
          btnMy21.frame = CGRectMake(230,252, 20, 15);
          [_tableView addSubview:btnMy21];
          
          UIButton* btnMy22 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
          [btnMy22 setImage:[[UIImage imageNamed:@"button_guanzhu.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
          btnMy22.frame = CGRectMake(230,392, 20, 15);
          [_tableView addSubview:btnMy22];
          
          UIButton* btnMy23 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
          [btnMy23 setImage:[[UIImage imageNamed:@"button_guanzhu.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
          btnMy23.frame = CGRectMake(230,532, 20, 15);
          [_tableView addSubview:btnMy23];
          
       UILabel *label20 = [[UILabel alloc]init];
       label20.frame = CGRectMake(255, 100, 40, 40);
       label20.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       label20.text = @"122";
       label20.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:label20];
       
       UILabel *label21 = [[UILabel alloc]init];
       label21.frame = CGRectMake(255, 240, 40, 40);
       label21.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       label21.text = @"145";
       label21.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:label21];
       
       UILabel *label22 = [[UILabel alloc]init];
       label22.frame = CGRectMake(255, 380, 40, 40);
       label22.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       label22.text = @"105";
       label22.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:label22];
       
       UILabel *label23 = [[UILabel alloc]init];
       label23.frame = CGRectMake(255, 520, 40, 40);
       label23.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       label23.text = @"199";
       label23.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:label23];
       
       
       //四个分享图+次数
       UIButton* btnMy30 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy30 setImage:[[UIImage imageNamed:@"button_share.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy30.frame = CGRectMake(300,112, 20, 15);
       [_tableView addSubview:btnMy30];
       
       UIButton* btnMy31 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy31 setImage:[[UIImage imageNamed:@"button_share.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy31.frame = CGRectMake(300,252, 20, 15);
       [_tableView addSubview:btnMy31];
       
       UIButton* btnMy32 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy32 setImage:[[UIImage imageNamed:@"button_share.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy32.frame = CGRectMake(300,392, 20, 15);
       [_tableView addSubview:btnMy32];
       
       UIButton* btnMy33 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy33 setImage:[[UIImage imageNamed:@"button_share.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy33.frame = CGRectMake(300,532, 20, 15);
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
       
       UILabel *label32 = [[UILabel alloc]init];
       label32.frame = CGRectMake(325, 380, 40, 40);
       label32.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       label32.text = @"32";
       label32.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:label32];
       
       UILabel *label33 = [[UILabel alloc]init];
       label33.frame = CGRectMake(325, 520, 40, 40);
       label33.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
       label33.text = @"53";
       label33.font = [UIFont systemFontOfSize:12];
       [_tableView addSubview:label33];
       
       
       //下面的文字框部分一堆uilabel
       
       
       UILabel* label01 = [[UILabel alloc]init];
       label01.text = @"假日";
       label01.frame = CGRectMake(160, 165, 80, 40);
       [_tableView addSubview:label01];
       label01.font = [UIFont systemFontOfSize:17];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;

       UILabel* label02 = [[UILabel alloc]init];
       label02.text = @"share小白";
       label02.frame = CGRectMake(260, 180, 80, 40);
       [_tableView addSubview:label02];
       label02.font = [UIFont systemFontOfSize:13];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;
       
       UILabel* label04 = [[UILabel alloc]init];
       label04.text = @"原创-插画-练习习作";
       label04.frame = CGRectMake(160, 168, 100, 100);
       [_tableView addSubview:label04];
       label04.font = [UIFont systemFontOfSize:10];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;
       
       UILabel* label03 = [[UILabel alloc]init];
       label03.text = @"15分钟前";
       label03.frame = CGRectMake(160, 220, 80, 40);
       [_tableView addSubview:label03];
       label03.font = [UIFont systemFontOfSize:10];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;
       
       UILabel* label05 = [[UILabel alloc]init];
       label05.text = @"国外画册欣赏";
       label05.frame = CGRectMake(160, 305, 120, 40);
       [_tableView addSubview:label05];
       label05.font = [UIFont systemFontOfSize:17];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;

       UILabel* label06 = [[UILabel alloc]init];
       label06.text = @"share小王";
       label06.frame = CGRectMake(260, 320, 80, 40);
       [_tableView addSubview:label06];
       label06.font = [UIFont systemFontOfSize:13];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;
       
       UILabel* label07 = [[UILabel alloc]init];
       label07.text = @"平面设计-画册设计";
       label07.frame = CGRectMake(160, 308, 100, 100);
       [_tableView addSubview:label07];
       label07.font = [UIFont systemFontOfSize:10];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;
       
       UILabel* label08 = [[UILabel alloc]init];
       label08.text = @"16分钟前";
       label08.frame = CGRectMake(160, 360, 80, 40);
       [_tableView addSubview:label08];
       label08.font = [UIFont systemFontOfSize:10];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;
       
       UILabel* label09 = [[UILabel alloc]init];
       label09.text = @"collection扁平设计";
       label09.frame = CGRectMake(160, 445, 480, 40);
       [_tableView addSubview:label09];
       label09.font = [UIFont systemFontOfSize:17];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;

       UILabel* label10 = [[UILabel alloc]init];
       label10.text = @"share小吕";
       label10.frame = CGRectMake(260, 460, 80, 40);
       [_tableView addSubview:label10];
       label10.font = [UIFont systemFontOfSize:13];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;
       
       UILabel* label11 = [[UILabel alloc]init];
       label11.text = @"平面设计-海报设计";
       label11.frame = CGRectMake(160, 448, 100, 100);
       [_tableView addSubview:label11];
       label11.font = [UIFont systemFontOfSize:10];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;
       
       UILabel* label12 = [[UILabel alloc]init];
       label12.text = @"17分钟前";
       label12.frame = CGRectMake(160, 500, 80, 40);
       [_tableView addSubview:label12];
       label12.font = [UIFont systemFontOfSize:10];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;
       
       UILabel* label13 = [[UILabel alloc]init];
       label13.text = @"板式整理术:高效解决多风格要求";

       label13.numberOfLines = 0;
       label13.frame = CGRectMake(160, 15, 180, 60);
       [_tableView addSubview:label13];
       label13.font = [UIFont systemFontOfSize:17];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;

       UILabel* label14 = [[UILabel alloc]init];
       label14.text = @"share小王";
       label14.frame = CGRectMake(260, 40, 80, 40);
       [_tableView addSubview:label14];
       label14.font = [UIFont systemFontOfSize:13];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;
       
       UILabel* label15 = [[UILabel alloc]init];
       label15.text = @"平面设计-样式设计";
       label15.frame = CGRectMake(160, 30, 100, 100);
       [_tableView addSubview:label15];
       label15.font = [UIFont systemFontOfSize:10];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;
       
       UILabel* label16 = [[UILabel alloc]init];
       label16.text = @"18分钟前";
       label16.frame = CGRectMake(160, 82, 80, 40);
       [_tableView addSubview:label16];
       label16.font = [UIFont systemFontOfSize:10];
       _tableView.tableHeaderView = nil;
       _tableView.tableFooterView = nil;
       
        

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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
