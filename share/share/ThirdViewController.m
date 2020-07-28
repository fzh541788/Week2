//
//  ThirdViewController.m
//  share
//
//  Created by young_jerry on 2020/7/20.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ThirdViewController.h"
#import "ThirdSonTableViewCell.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage* image3 = [UIImage imageNamed:@"底部3.png"];
    UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:image3 tag:101];
    self.tabBarItem = tabBarItem;
    
    NSArray *array = @[@"精选文章", @"热门推荐", @"全部文章"];
    _segmentedControl = [[UISegmentedControl alloc] initWithItems:array];
    [self.view addSubview:_segmentedControl];
    
    _segmentedControl.frame = CGRectMake(0, 60, [UIScreen mainScreen].bounds.size.width, 45);
    _segmentedControl.tintColor = [UIColor whiteColor];
    _segmentedControl.selectedSegmentIndex = 0;
    _segmentedControl.momentary = NO;
    [_segmentedControl setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:16]} forState:UIControlStateNormal];
    [_segmentedControl setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:0.45 green:0.45 blue:0.45 alpha:1.0],NSFontAttributeName:[UIFont systemFontOfSize:16]} forState:UIControlStateSelected];
    [_segmentedControl setBackgroundImage:[UIImage imageNamed:@"essay_background.png"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [_segmentedControl addTarget:self action:@selector(roll:) forControlEvents:UIControlEventValueChanged];
    
    _scrollView.bounces = NO;
    _scrollView.alwaysBounceHorizontal = NO;
    _scrollView.alwaysBounceVertical = NO;
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 600)];
    _scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width * 3, 600);
    _scrollView.delegate = self;
    _scrollView.pagingEnabled = YES;
    _scrollView.scrollEnabled = YES;
    _scrollView.bouncesZoom = NO;
    _scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:_scrollView];
    
    
    _tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 580) style:UITableViewStylePlain];
    _tableView1.delegate = self;
    _tableView1.dataSource = self;
    _tableView1.tag = 101;
    [self.scrollView addSubview:_tableView1];
    
    _tableView2 = [[UITableView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width, 0, [UIScreen mainScreen].bounds.size.width, 580) style:UITableViewStylePlain];
    _tableView2.delegate = self;
    _tableView2.dataSource = self;
    _tableView2.tag = 102;
    [self.scrollView addSubview:_tableView2];
    
    _tableView3 = [[UITableView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width * 2, 0, [UIScreen mainScreen].bounds.size.width, 580) style:UITableViewStylePlain];
    _tableView3.dataSource = self;
    _tableView3.delegate = self;
    [self.scrollView addSubview:_tableView3];
    
    //通过一个子函数实现注册的功能
    [_tableView1 registerClass:[ThirdSonTableViewCell class] forCellReuseIdentifier:@"1"];
    [_tableView2 registerClass:[ThirdSonTableViewCell class] forCellReuseIdentifier:@"2"];
    [_tableView3 registerClass:[ThirdSonTableViewCell class] forCellReuseIdentifier:@"3"];
    
    
}

- (void)roll:(UISegmentedControl *) sem{
    
    NSInteger selectindext = _segmentedControl.selectedSegmentIndex;
    if(selectindext == 0){
        [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    }
    if (selectindext == 1){
        [_scrollView setContentOffset:CGPointMake([UIScreen mainScreen].bounds.size.width, 0) animated:YES];
    }
    if(selectindext == 2) {
        [_scrollView setContentOffset:CGPointMake([UIScreen mainScreen].bounds.size.width * 2, 0) animated:YES];
    }
    
}
//在视图滚动时接到通知，包括一个指向被滚动视图的指针，从中可读取contentOffset属性已确定其滚动到的位置
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    if (_scrollView.contentOffset.x == 0) {
        _segmentedControl.selectedSegmentIndex = 0;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width) {
        _segmentedControl.selectedSegmentIndex = 1;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width * 2)  {
        _segmentedControl.selectedSegmentIndex = 2;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //根据分别的标签数字来确定哪一页，如果定下来是某一页 通过一个子tableview 这个子tableview就是上面通过字函数注册的类 然后通过这一个类进行cell的复用 通过数组进行统一赋值
    if(tableView.tag == 101){
        ThirdSonTableViewCell *cell1 = [_tableView1 dequeueReusableCellWithIdentifier:@"1" forIndexPath:indexPath];
        
        NSArray *imageArr = @[@"image1.jpg", @"image2.jpg", @"image3.jpg", @"image4.jpg", @"image5.jpg"];
        NSArray *nameArr = @[@"宇宙摩天轮", @"野草", @"半山", @"初", @"po8"];
        NSArray *writerArr = @[@"share小王", @"share小白", @"share小黑", @"share小绿", @"sharec小张"];
        NSArray *timeArr = @[@"18分钟前", @"20分钟前", @"25分钟前", @"1小时前", @"2小时前"];
        
        cell1.nameLabel.text = nameArr[indexPath.row];
        cell1.writerLabel.text = writerArr[indexPath.row];
        cell1.showImageView.image = [UIImage imageNamed:imageArr[indexPath.row]];
        cell1.timeLabel.text = timeArr[indexPath.row];
        
        return cell1;
        
    } else if(tableView.tag == 102){
        ThirdSonTableViewCell *cell2 = [_tableView2 dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
        
        NSArray *nameArr = @[@"love9", @"需要保密的情话", @"湖",  @"回忆垃圾桶", @"慢慢升空"];
        NSArray *imageArr = @[@"image6.jpg", @"image7.jpg",@"image8.jpg", @"image9.jpg", @"image1.jpg"];
        NSArray *writerArr = @[@"share江辰", @"share安全着陆", @"sharesMuti", @"share李佳隆", @"sharePo8"];
        NSArray *timeArr = @[@"11分钟前", @"12分钟前", @"13分钟前", @"14分钟前", @"15分钟前"];
        
        cell2.nameLabel.text = nameArr[indexPath.row];
        cell2.writerLabel.text = writerArr[indexPath.row];
        cell2.showImageView.image = [UIImage imageNamed:imageArr[indexPath.row]];
        cell2.timeLabel.text = timeArr[indexPath.row];
        
        return cell2;
        
    } else {
        ThirdSonTableViewCell *cell3 = [_tableView3 dequeueReusableCellWithIdentifier:@"3" forIndexPath:indexPath];
        
        NSArray *nameArr = @[@"Blue", @"Haru Haru", @"Lies", @"LAST DANCE",@"Untitled"];
        NSArray *imageArr = @[@"image11.jpg", @"image12.jpg", @"image13.jpg", @"image14.jpg",@"image15.jpg"];
        NSArray *writerArr = @[@"share小一", @"shares小二", @"share小三", @"share小四", @"share小五"];
        NSArray *timeArr = @[@"2分钟前", @"3分钟前", @"4分钟前", @"5分钟前", @"6分钟前"];
        
        cell3.nameLabel.text = nameArr[indexPath.row];
        cell3.writerLabel.text = writerArr[indexPath.row];
        cell3.showImageView.image = [UIImage imageNamed:imageArr[indexPath.row]];
        cell3.timeLabel.text = timeArr[indexPath.row];
        
        return cell3;
        
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 4)
        return 170;
    return 140;
    
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
