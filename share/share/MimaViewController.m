//
//  MimaViewController.m
//  share
//
//  Created by young_jerry on 2020/7/27.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "MimaViewController.h"

@interface MimaViewController ()

@end

@implementation MimaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tfUserName = [[UITextField alloc]init];
       _tfUserName.frame = CGRectMake(40, 100, 290, 40);
       _tfUserName.placeholder = @"请输入旧密码";
       _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
       _tfUserName.leftViewMode = UITextFieldViewModeAlways;
       //密码输入框
       _tfPassword = [[UITextField alloc]init];
       _tfPassword.frame = CGRectMake(40, 150, 290, 40);
       _tfPassword.placeholder = @"请输入新密码";
       _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
       _tfPassword.secureTextEntry = YES;
    
       _tfPassword1 = [[UITextField alloc]init];
       _tfPassword1.frame = CGRectMake(40, 200, 290, 40);
       _tfPassword1.placeholder = @"再次输入新密码";
       _tfPassword1.borderStyle = UITextBorderStyleRoundedRect;
       _tfPassword1.secureTextEntry = YES;
       _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
           [_btLogin setImage:[[UIImage imageNamed:@"denglu02.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
       _btLogin.frame = CGRectMake(130, 280, 80, 40);
       [_btLogin addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassword];
    [self.view addSubview:_tfPassword1];
    [self.view addSubview:_btLogin];
}
-(void)press{
    NSString* strTexName = _tfPassword.text;
    NSString* strTexPass = _tfPassword1.text;
//    if(_strPass isEqualToString:strTexPass)
    if([strTexName isEqualToString:strTexPass]){
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"修改成功！" preferredStyle:UIAlertControllerStyleAlert];
                      UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
                      

                      [alert addAction:sureAction];
                      [self presentViewController:alert animated:NO completion:nil];
    }else{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"两次密码不一致！" preferredStyle:UIAlertControllerStyleAlert];
               UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
               

               [alert addAction:sureAction];
               [self presentViewController:alert animated:NO completion:nil];
    }
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
