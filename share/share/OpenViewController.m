//
//  OpenViewController.m
//  share
//
//  Created by young_jerry on 2020/7/27.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "OpenViewController.h"
#import "ViewController.h"
@interface OpenViewController ()

@end

@implementation OpenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"开机界面.jpg"] ];
    img.frame = self.view.bounds;
    img.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view insertSubview:img atIndex:0];
        [self performSelector:@selector(next) withObject:self afterDelay:2];
    }

    - (void)next{
       
        UIWindow *window = self.view.window;
        ViewController *main = [[ViewController alloc] init] ;
        main.view.transform = CGAffineTransformMakeScale(0.2, 0.2);
        [UIView animateWithDuration:0.1 animations:^{
            main.view.transform = CGAffineTransformIdentity;
        }];
        window.rootViewController = main;
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
