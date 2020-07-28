//
//  SetViewController.m
//  share
//
//  Created by young_jerry on 2020/7/26.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "SetViewController.h"
#import "XiaoxiViewController.h"
#import "MimaViewController.h"
#import "ZiliaoViewController.h"
@interface SetViewController ()

@end

@implementation SetViewController

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
                  
             NSArray* array01 = [NSArray arrayWithObjects:@"基本资料",@"修改密码",@"消息设置",@"关于SHARE",@"清除缓存", nil];
              [_arrayData addObject:array01];

    
        
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
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
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
 
            return 40;
    }
    -(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
        return [[UIView alloc]init];
    }
    -(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
    {
        return [[UIView alloc]init];
    }
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] init];
    self.navigationItem.backBarButtonItem = item;
    if(indexPath.row == 0){
        ZiliaoViewController *root = [[ZiliaoViewController alloc]init];
        [self.navigationController pushViewController:root animated:NO];
    }else if (indexPath.row == 1) {
        MimaViewController *root = [[MimaViewController alloc] init];
        [self.navigationController pushViewController:root animated:NO];
    }else if(indexPath.row == 2){
        XiaoxiViewController *root = [[XiaoxiViewController alloc]init];
        [self.navigationController pushViewController:root animated:NO];
    }else if (indexPath.row == 4){
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"缓存已清空" preferredStyle:UIAlertControllerStyleAlert];
             [self presentViewController:alert animated:NO completion:nil];
        [self performSelector:@selector(disAlert:) withObject:alert afterDelay:1];
    }
    else {
    
        //alert 弹窗
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"目前没有新内容！" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        

        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    }
}
-(void)disAlert : (UIAlertController *) alert {
    [alert dismissViewControllerAnimated:YES completion:nil];
}
@end
