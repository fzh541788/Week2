//
//  FirstViewController.m
//  share
//
//  Created by young_jerry on 2020/7/20.
//  Copyright © 2020 young_jerry. All rights reserved.
//

//#import "FirstViewController.h"
//
//@interface FirstViewController ()
//
//@end
//
//@implementation FirstViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//
//}
#import "FirstViewController.h"
#import "FirstsonViewController.h"
#define KScreenWidth (self.view.frame.size.width)

@interface FirstViewController ()<UIScrollViewDelegate>

@property(nonatomic,strong)UIScrollView *scrollView;
@property(nonatomic,strong)UIPageControl *pageControl;
@property(nonatomic,strong)CADisplayLink *link;
@property  BOOL zanSelect;
@property(nonatomic, strong) UILabel *zanlabel;
@property(nonatomic, strong) UILabel *zanlabel2;
@property(nonatomic, strong) UILabel *zanlabel3;
@property(nonatomic, strong) UILabel *zanlabel4;
@property  BOOL zanSelect2;
@property  BOOL zanSelect3;
@property  BOOL zanSelect4;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _zanSelect = NO;
    _zanSelect2 = NO;
    _zanSelect3 = NO;
    _zanSelect4 = NO;
    UIImage* image1 = [UIImage imageNamed:@"底部1.png"];
      UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTitle:@"" image:image1 tag:101];
      self.tabBarItem = tabBarItem;
    //当显示到要展示的图片4，并且要继续向右滑动时，逻辑上来说我们需要回到要展示的图片1，才能继续循环。但为了实现“向右滑动”的效果，需要额外在最后一页放上一张图片1，展示出向右滑的动画，再偷偷将UIScrollView的偏移量调整到要展示的图片1位置（不显示动画），营造出一种“一直在向右滑”的假象。
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, 375, 586)  style:UITableViewStyleGrouped];
      //设置数据视图的代理对象
      _tableView.delegate = self;
      //设置数据视图的数据源对象
      _tableView.dataSource = self;
        [self.view addSubview:_tableView];
      
    // 轮播视图
        //设置scrollView
        self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, 155)];
        //滑动到边缘时的弹簧效果
        _scrollView.bounces = YES;
        //是否分页显示
        _scrollView.pagingEnabled = YES;
        //设置数据
        for (int i = 1; i <= 5; i ++) {
            NSString *imgName;
                if (i == 5){
                //最后一张 显示第一张图片
                imgName = @"1.jpg";
            }else{
                //其他
                imgName = [NSString stringWithFormat:@"%d.jpg",i];
            }
            //显示视图（这个i*kscreenwidth是灵魂）
            UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(i*KScreenWidth, 0, KScreenWidth, 160)];
            imgView.image = [UIImage imageNamed:imgName];
            [_scrollView addSubview:imgView];
        }
        
    //默认显示ScrollView的第二页，即第一张图片
        
        //设置小圆点
        self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(KScreenWidth/2-20, 120, 50, 50)];
        _pageControl.numberOfPages = 4;
        _pageControl.currentPage = 0;
        _pageControl.pageIndicatorTintColor = [UIColor grayColor];
        _pageControl.currentPageIndicatorTintColor = [UIColor orangeColor];
        
        [_tableView addSubview:_scrollView];
        [_tableView addSubview:_pageControl];
      _arrayData = [[NSMutableArray alloc]init];
           
      NSArray* array01 = [NSArray arrayWithObjects:@"", nil];
      NSArray* array02 = [NSArray arrayWithObjects:@"", nil];
      NSArray* array03 = [NSArray arrayWithObjects:@"", nil];
      NSArray* array04 = [NSArray arrayWithObjects:@"", nil];
      NSArray* array05 = [NSArray arrayWithObjects:@"", nil];
      
       [_arrayData addObject:array01];
       [_arrayData addObject:array02];
       [_arrayData addObject:array03];
       [_arrayData addObject:array04];
       [_arrayData addObject:array05];
    
    //四张照片
    UIButton* btnMy1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy1 setImage:[[UIImage imageNamed:@"list_img1.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy1.titleLabel.font = [UIFont systemFontOfSize:10];
       btnMy1.frame = CGRectMake(0, 155, 140, 140);
       [_tableView addSubview:btnMy1];
    
        UIButton* btnMy2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btnMy2 setImage:[[UIImage imageNamed:@"list_img2.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        btnMy2.titleLabel.font = [UIFont systemFontOfSize:10];
        btnMy2.frame = CGRectMake(0, 295, 140, 140);
        [_tableView addSubview:btnMy2];
    
        UIButton* btnMy3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btnMy3 setImage:[[UIImage imageNamed:@"list_img3.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        btnMy3.titleLabel.font = [UIFont systemFontOfSize:10];
        btnMy3.frame = CGRectMake(0, 435, 140, 140);
        [_tableView addSubview:btnMy3];
    
        UIButton* btnMy4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btnMy4 setImage:[[UIImage imageNamed:@"list_img4.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        btnMy4.titleLabel.font = [UIFont systemFontOfSize:10];
        btnMy4.frame = CGRectMake(0, 575, 140, 140);
        [_tableView addSubview:btnMy4];
    
    
    //4个点赞心图+后面数字
    
    
    UIButton* btnMy5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy5 setImage:[[UIImage imageNamed:@"button_zan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy5.frame = CGRectMake(160, 260, 20, 20);
    [btnMy5
     addTarget:self action:@selector(pressZan1) forControlEvents:UIControlEventTouchDown];
    [_tableView addSubview:btnMy5];
    
    _zanlabel = [[UILabel alloc]init];
    _zanlabel.frame = CGRectMake(185, 250, 40, 40);
    _zanlabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    _zanlabel.text = @"102";
    _zanlabel.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:_zanlabel];
    
    UIButton* btnMy6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy6 setImage:[[UIImage imageNamed:@"button_zan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy6.frame = CGRectMake(160, 400, 20, 20);
    [btnMy6
     addTarget:self action:@selector(pressZan2) forControlEvents:UIControlEventTouchDown];
    [_tableView addSubview:btnMy6];
    
    _zanlabel2 = [[UILabel alloc]init];
    _zanlabel2.frame = CGRectMake(185, 390, 40, 40);
    _zanlabel2.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    _zanlabel2.text = @"148";
    _zanlabel2.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:_zanlabel2];
    
    UIButton* btnMy7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy7 setImage:[[UIImage imageNamed:@"button_zan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy7.frame = CGRectMake(160, 540, 20, 20);
    [btnMy7
     addTarget:self action:@selector(pressZan3) forControlEvents:UIControlEventTouchDown];
    [_tableView addSubview:btnMy7];
    
    _zanlabel3 = [[UILabel alloc]init];
    _zanlabel3.frame = CGRectMake(185, 530, 40, 40);
    _zanlabel3.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    _zanlabel3.text = @"67";
    _zanlabel3.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:_zanlabel3];
    
    UIButton* btnMy8 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy8 setImage:[[UIImage imageNamed:@"button_zan.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy8.frame = CGRectMake(160, 685, 20, 20);
    [btnMy8
     addTarget:self action:@selector(pressZan4) forControlEvents:UIControlEventTouchDown];
    [_tableView addSubview:btnMy8];
    
    
    _zanlabel4 = [[UILabel alloc]init];
    _zanlabel4.frame = CGRectMake(185, 680, 40, 40);
    _zanlabel4.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    _zanlabel4.text = @"102";
    _zanlabel4.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:_zanlabel4];
    
    
    //4个浏览次数图+次数
    UIButton* btnMy20 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
               [btnMy20 setImage:[[UIImage imageNamed:@"button_guanzhu.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
               btnMy20.frame = CGRectMake(230,262, 20, 15);
               [btnMy20
                addTarget:self action:@selector(wu) forControlEvents:UIControlEventTouchDown];
               [_tableView addSubview:btnMy20];
       
       UIButton* btnMy21 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy21 setImage:[[UIImage imageNamed:@"button_guanzhu.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy21.frame = CGRectMake(230,402, 20, 15);
       [btnMy21
        addTarget:self action:@selector(wu) forControlEvents:UIControlEventTouchDown];
       [_tableView addSubview:btnMy21];
       
       UIButton* btnMy22 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy22 setImage:[[UIImage imageNamed:@"button_guanzhu.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy22.frame = CGRectMake(230,542, 20, 15);
       [btnMy22
        addTarget:self action:@selector(wu) forControlEvents:UIControlEventTouchDown];
       [_tableView addSubview:btnMy22];
       
       UIButton* btnMy23 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       [btnMy23 setImage:[[UIImage imageNamed:@"button_guanzhu.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       btnMy23.frame = CGRectMake(230,690, 20, 15);
       [btnMy23
        addTarget:self action:@selector(wu) forControlEvents:UIControlEventTouchDown];
       [_tableView addSubview:btnMy23];
       
    UILabel *label20 = [[UILabel alloc]init];
    label20.frame = CGRectMake(255, 250, 40, 40);
    label20.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label20.text = @"122";
    label20.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:label20];
    
    UILabel *label21 = [[UILabel alloc]init];
    label21.frame = CGRectMake(255, 390, 40, 40);
    label21.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label21.text = @"145";
    label21.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:label21];
    
    UILabel *label22 = [[UILabel alloc]init];
    label22.frame = CGRectMake(255, 530, 40, 40);
    label22.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label22.text = @"105";
    label22.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:label22];
    
    UILabel *label23 = [[UILabel alloc]init];
    label23.frame = CGRectMake(255, 680, 40, 40);
    label23.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label23.text = @"199";
    label23.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:label23];
    
    
    //四个分享图+次数
    UIButton* btnMy30 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy30 setImage:[[UIImage imageNamed:@"button_share.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy30.frame = CGRectMake(300,262, 20, 15);
    [btnMy30
     addTarget:self action:@selector(wu) forControlEvents:UIControlEventTouchDown];
    [_tableView addSubview:btnMy30];
    
    UIButton* btnMy31 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy31 setImage:[[UIImage imageNamed:@"button_share.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy31.frame = CGRectMake(300,402, 20, 15);
    [btnMy31
     addTarget:self action:@selector(wu) forControlEvents:UIControlEventTouchDown];
    [_tableView addSubview:btnMy31];
    
    UIButton* btnMy32 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy32 setImage:[[UIImage imageNamed:@"button_share.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy32.frame = CGRectMake(300,542, 20, 15);
    [btnMy32
     addTarget:self action:@selector(wu) forControlEvents:UIControlEventTouchDown];
    [_tableView addSubview:btnMy32];
    
    UIButton* btnMy33 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy33 setImage:[[UIImage imageNamed:@"button_share.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy33.frame = CGRectMake(300,692, 20, 15);
    [btnMy33
     addTarget:self action:@selector(wu) forControlEvents:UIControlEventTouchDown];
    [_tableView addSubview:btnMy33];
    
    UILabel *label30 = [[UILabel alloc]init];
    label30.frame = CGRectMake(325, 250, 40, 40);
    label30.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label30.text = @"45";
    label30.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:label30];
    
    UILabel *label31 = [[UILabel alloc]init];
    label31.frame = CGRectMake(325, 390, 40, 40);
    label31.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label31.text = @"54";
    label31.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:label31];
    
    UILabel *label32 = [[UILabel alloc]init];
    label32.frame = CGRectMake(325, 530, 40, 40);
    label32.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    label32.text = @"32";
    label32.font = [UIFont systemFontOfSize:12];
    [_tableView addSubview:label32];
    
    UILabel *label33 = [[UILabel alloc]init];
    label33.frame = CGRectMake(325, 680, 40, 40);
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
    label13.frame = CGRectMake(160, 585, 180, 60);
    [_tableView addSubview:label13];
    label13.font = [UIFont systemFontOfSize:17];
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;

    UILabel* label14 = [[UILabel alloc]init];
    label14.text = @"share小王";
    label14.frame = CGRectMake(260, 610, 80, 40);
    [_tableView addSubview:label14];
    label14.font = [UIFont systemFontOfSize:13];
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;
    
    UILabel* label15 = [[UILabel alloc]init];
    label15.text = @"平面设计-样式设计";
    label15.frame = CGRectMake(160, 600, 100, 100);
    [_tableView addSubview:label15];
    label15.font = [UIFont systemFontOfSize:10];
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;
    
    UILabel* label16 = [[UILabel alloc]init];
    label16.text = @"18分钟前";
    label16.frame = CGRectMake(160, 652, 80, 40);
    [_tableView addSubview:label16];
    label16.font = [UIFont systemFontOfSize:10];
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;
    
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
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0)
    return 155;
    else
        return 140;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [[UIView alloc]init];
}
-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [[UIView alloc]init];
}

-(void)viewDidAppear:(BOOL)animated{
    [self setupLink];
}
-(void)wu{
    
}
-(void)pressZan1{
    if(_zanSelect == NO) {
           _zanSelect = YES;
           _zanlabel.text = @"103";
       } else {
           _zanSelect = NO;
           _zanlabel.text = @"102";
       }
//    NSLog(@"111");
}
-(void)pressZan2{
    if(_zanSelect2 == NO) {
           _zanSelect2 = YES;
           _zanlabel2.text = @"149";
       } else {
           _zanSelect2 = NO;
           _zanlabel2.text = @"148";
       }
//    NSLog(@"111");
}
-(void)pressZan3{
    if(_zanSelect3 == NO) {
           _zanSelect3 = YES;
           _zanlabel3.text = @"68";
       } else {
           _zanSelect3 = NO;
           _zanlabel3.text = @"67";
       }
//    NSLog(@"111");
}
-(void)pressZan4{
    if(_zanSelect4 == NO) {
           _zanSelect4 = YES;
           _zanlabel4.text = @"103";
       } else {
           _zanSelect4 = NO;
           _zanlabel4.text = @"102";
       }
//    NSLog(@"111");
}
-(void)setupLink{
    //设定一个定时器
//    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(action:) userInfo:nil repeats:NO];
    self.link = [CADisplayLink displayLinkWithTarget:self selector:@selector(slideImage)];
    _link.preferredFramesPerSecond = 1;
    [_link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
    
}
-(void)slideImage{
    int page = _scrollView.contentOffset.x / KScreenWidth;
    if (page == 5) {
        //回到第一页（5）
        //如果是 0，0 但是默认的第5张为第1张 所以应该从1开始而不是从0开始
        _scrollView.contentOffset = CGPointMake(KScreenWidth, 0);
        //跳转到第二页 contentoffset为偏移量
        [_scrollView setContentOffset:CGPointMake(KScreenWidth*2, 0) animated:YES];
    }else{
        [_scrollView setContentOffset:CGPointMake((page+1)*KScreenWidth, 0) animated:YES];
    }
    //小圆点的操作：
    if (page == 4) {
        _pageControl.currentPage = 0;
    }else if(page == 5){
        _pageControl.currentPage = 1;
    }else{
        _pageControl.currentPage = page;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    导航+UITableView，在push，back回来之后，当前cell仍然是选中的状态的解决方法
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] init];
    self.navigationItem.backBarButtonItem = item;
        if (indexPath.section == 1) {
        FirstsonViewController *root = [[FirstsonViewController alloc] init];
        [self.navigationController pushViewController:root animated:NO];
    }
}
@end
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//@end
