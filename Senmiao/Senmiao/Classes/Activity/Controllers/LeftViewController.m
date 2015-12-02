//
//  LeftViewController.m
//  Senmiao
//
//  Created by lanou3g on 15/11/28.
//  Copyright © 2015年 党政. All rights reserved.
//

#import "LeftViewController.h"
#import "YYYViewController.h"
#import "UIViewController+MMDrawerController.h"
@interface LeftViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView * tableView;

@property (nonatomic,strong) NSArray * array;

@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = YES;
    
    
   self.view.backgroundColor = [UIColor colorWithRed:0.161 green:0.655 blue:0.463 alpha:1.000];
    
    NSLog(@"%@",self.view);
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, kScreenHeight -300, 200, 300)];
    
    
    self.tableView.delegate = self;
    
    self.tableView.dataSource = self;
    
  
    
    [self.view addSubview:_tableView];
    
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
              self.array = @[
                        @"摇一摇",
                        @"引导页",
                        @"营销活动"
                        ];
    
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    NSString * str = _array[indexPath.row];
    
    cell.textLabel.text = str;
    cell.textLabel.textColor = [UIColor whiteColor];
    
   cell.backgroundColor = [UIColor colorWithRed:0.161 green:0.655 blue:0.463 alpha:1.000];
    
    cell.selectionStyle = UITableViewCellAccessoryNone;
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0)
    {
        
        YYYViewController * yyyVC = [[YYYViewController alloc]init];
        
//        UIModalTransitionStyleCoverVertical = 0,
//        UIModalTransitionStyleFlipHorizontal __TVOS_PROHIBITED,
//        UIModalTransitionStyleCrossDissolve,
//        UIModalTransitionStylePartialCurl
        
        yyyVC.modalTransitionStyle =UIModalTransitionStyleCrossDissolve;
        
        [self presentViewController:yyyVC animated:YES completion:nil];
    }
    
}

@end
