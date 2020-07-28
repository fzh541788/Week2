//
//  MimaViewController.h
//  share
//
//  Created by young_jerry on 2020/7/27.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MimaViewController : UIViewController{
//用户输入框
   UITextField* _tfUserName;
   //密码输入框
   UITextField* _tfPassword;
    
    UITextField* _tfPassword1;
   //登陆按钮
   UIButton* _btLogin;
}
@end

NS_ASSUME_NONNULL_END
