//
//  YYYViewController.m
//  Senmiao
//
//  Created by lanou3g on 15/11/30.
//  Copyright © 2015年 党政. All rights reserved.
//

#import "YYYViewController.h"

@interface YYYViewController ()

@end

@implementation YYYViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIView * v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 64)];
    
    v.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:v];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    button.frame = CGRectMake(10, 25, 30, 30);
    
    UIImage * image = [UIImage imageNamed:@"icn_title_chevron_left_nor"];
    
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [button setImage:image forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [v addSubview:button];
    
    
 
}
- (void)buttonAction:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}
- (void)viewWillAppear:(BOOL)animated
{
   
    [self resignFirstResponder];
    [super viewWillAppear:animated];
    
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
            NSLog(@"oo");
    }

}

@end
