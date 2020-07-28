//
//  FourthViewController.m
//  share
//
//  Created by young_jerry on 2020/7/20.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

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
              
         NSArray* array01 = [NSArray arrayWithObjects:@"",@"下厨也要美美的，从一条围裙开始-六月鲜围裙创意设计大赛", nil];
         NSArray* array02 = [NSArray arrayWithObjects:@"",@"MIUI主题市场让你的创意改变世界！", nil];
         NSArray* array03 = [NSArray arrayWithObjects:@"", nil];
         
          [_arrayData addObject:array01];
          [_arrayData addObject:array02];
          [_arrayData addObject:array03];
    
         UIButton* btnHd1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
         [btnHd1 setImage:[[UIImage imageNamed:@"main_img2.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
         btnHd1.frame = CGRectMake(0, 0, (self.view.frame.size.width), 140);
         [_tableView addSubview:btnHd1];
    
    UIButton* btnHd2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnHd2 setImage:[[UIImage imageNamed:@"main_img3.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnHd2.frame = CGRectMake(0, 150, (self.view.frame.size.width), 140);
    [_tableView addSubview:btnHd2];
    
    UIButton* btnHd3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnHd3 setImage:[[UIImage imageNamed:@"main_img4.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnHd3.frame = CGRectMake(0, 300, (self.view.frame.size.width), 140);
    [_tableView addSubview:btnHd3];

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
         cell.textLabel.font = [UIFont systemFontOfSize:10];
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
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == 1)
        return 10;
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
