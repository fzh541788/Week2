//
//  ViewController.m
//  share
//
//  Created by young_jerry on 2020/7/20.
//  Copyright © 2020 young_jerry. All rights reserved.
//
#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"
#import "RegisterViewController.h"
@interface ViewController ()<UITextFieldDelegate,PassDelegate>
@property NSInteger flag;
@property NSInteger a ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //logo
    UIButton *title = [UIButton buttonWithType:UIButtonTypeRoundedRect];
      [title setImage:[[UIImage imageNamed:@"logo1.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    title.frame = CGRectMake(65, 130, 240, 140);
    //用户名输入框
    _tfUserName = [[UITextField alloc]init];
    _tfUserName.frame = CGRectMake(40, 300, 290, 40);
    _tfUserName.placeholder = @"请输入用户名";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    //输入框前面的头像
    UIImageView *loginImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 5, 5  )];
    loginImage.image = [UIImage imageNamed:@"user_img.png"];
    _tfUserName.leftView = loginImage;
    _tfUserName.leftViewMode = UITextFieldViewModeAlways;
    //密码输入框
    _tfPassword = [[UITextField alloc]init];
    _tfPassword.frame = CGRectMake(40, 350, 290, 40);
    _tfPassword.placeholder = @"请输入密码";
    _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
    _tfPassword.secureTextEntry = YES;
    //输入框前面的密码图片
    UIImageView *loginImage1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 5, 5  )];
       loginImage1.image = [UIImage imageNamed:@"pass_img.png"];
       _tfPassword.leftView = loginImage1;
       _tfPassword.leftViewMode = UITextFieldViewModeAlways;
    //登陆和注册按钮
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_btLogin setImage:[[UIImage imageNamed:@"denglu02.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _btLogin.frame = CGRectMake(100, 420, 80, 40);
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
      [_btRegister setImage:[[UIImage imageNamed:@"denglu01.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _btRegister.frame = CGRectMake(200, 420, 80, 40);
//    [_btRegister setTitle:@"注册" forState:UIControlStateNormal];
    
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"kaiji1.png"]];
//    [self.view addSubview:_ibUserName];
//    [self.view addSubview:_ibPassword];
    [self.view addSubview:title];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassword];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];
    _tfUserName.tag = 1;
       _tfPassword.tag = 2;
    
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    _a = textField.tag;
    NSLog(@"111");
    self.view.frame = CGRectMake(0, -100, self.view.frame.size.width, self.view.frame.size.height) ;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if(_a == textField.tag)
    self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) ;
else{
    
}
    return YES;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_tfUserName resignFirstResponder];
    [_tfPassword resignFirstResponder];
}
-(void)pressLogin{
    NSString* strName = @"123";
    NSString* strPass = @"123";
    NSString* strTexName = _tfUserName.text;
    NSString* strTexPass = _tfPassword.text;
    
    if(([strName isEqualToString:strTexName] && [strPass isEqualToString:strTexPass]) || _flag == 1){


                FirstViewController* VCFrist = [[FirstViewController alloc]init];
                SecondViewController* VCSecond = [[SecondViewController alloc]init];
                ThirdViewController* VCThird = [[ThirdViewController alloc]init];
                FourthViewController* VCFourth = [[FourthViewController alloc]init];
                FifthViewController* VCFifth = [[FifthViewController alloc]init];

                VCFrist.title = @"主页";
                VCSecond.title = @"搜索";
                VCThird.title = @"文章";
                VCFourth.title = @"活动";
                VCFifth.title = @"个人信息";

                VCFrist.view.backgroundColor = [UIColor whiteColor];
                VCSecond.view.backgroundColor = [UIColor whiteColor];
                VCThird.view.backgroundColor = [UIColor whiteColor];
                VCFourth.view.backgroundColor = [UIColor whiteColor];
                VCFifth.view.backgroundColor = [UIColor whiteColor];

                        UINavigationController *a1 = [[UINavigationController alloc] initWithRootViewController:VCFrist];

                        UINavigationController *a2 = [[UINavigationController alloc] initWithRootViewController:VCSecond];

                        UINavigationController *a3 = [[UINavigationController alloc] initWithRootViewController:VCThird];

                        UINavigationController *a4 = [[UINavigationController alloc] initWithRootViewController:VCFourth];

                        UINavigationController *a5 = [[UINavigationController alloc] initWithRootViewController:VCFifth];
            //    创建一个控制器数组对象
            //    将所有要被分栏控制器管理的对象添加到数组中
                NSArray* arrayVC = [NSArray arrayWithObjects:a1,a2,a3,a4,a5, nil];

                UITabBarController* tbController = [[UITabBarController alloc]init];

                tbController.viewControllers = arrayVC;

        //        tbController.selectedIndex = 2;
                //   将分栏控制器作为根视图
        self.view.window.rootViewController = tbController;
        [self.view.window makeKeyAndVisible];
        
    }
    else{
        UIAlertController* p = [UIAlertController alertControllerWithTitle:@"提示" message:@"验证失败" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* backAction = [UIAlertAction actionWithTitle:@"返回" style:UIAlertActionStyleDefault handler:nil];
        [p addAction:backAction];
        [self presentViewController:p animated:YES completion:nil];
    }
   
}

-(void)pressRegister{
        RegisterViewController *registerviewController = [[RegisterViewController alloc] init];
        registerviewController.delegate = self;
    registerviewController.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:registerviewController animated:YES completion:nil];
    }
-(void)put:(NSString *)str1 and:(NSString *)str2{
    _tfUserName.text = str1;
    _tfPassword.text = str2;
    if([str1 isEqualToString:@""])
        return;
    else
    _flag = 1;
}
  @end

