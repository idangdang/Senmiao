//
//  ListViewController.m
//  Senmiao
//
//  Created by lanou3g on 15/11/23.
//  Copyright © 2015年 党政. All rights reserved.
//

#import "ListViewController.h"



#import "DZRecordView.h"

#import "LVRecordTool.h"
@interface ListViewController ()

@property (nonatomic,strong) UIView * navView;

@property (nonatomic,strong) UIButton * backButton;

@property (nonatomic,strong) UITableView * detailTableView;




@property (nonatomic,strong) DZRecordView * recordView;

@property (nonatomic,strong) LVRecordTool * recordtool;

@property (nonatomic,strong) UIImageView * imgView;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    UIImage * image = [UIImage imageNamed:@"icn_title_chevron_left_nor"];

    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIBarButtonItem * bar = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStyleDone target:self action:@selector(backButtonAction:)];
    
    self.navigationItem.leftBarButtonItem = bar;
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    
    self.detailTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight - 64)];
    
    [self.view addSubview:_detailTableView];
    
    

    
    self.recordView = [DZRecordView recordView];

    self.recordView.frame = CGRectMake(0,kScreenHeight - 50, kScreenWidth, 50);
    
    _recordView.backgroundColor = [UIColor whiteColor];
    
    
    __weak typeof (self) weakSelf = self;
    
    self.recordView.block = ^(NSString * name){
        
        __strong typeof (self) strongSelf = weakSelf;
        
        strongSelf.imgView.hidden = NO;
        
        strongSelf.imgView.image = [UIImage imageNamed:name];
     
    };
    
    self.recordView.hBlock = ^(){
        
        __strong typeof (self) strongSelf = weakSelf;
        
         strongSelf.imgView.hidden = YES;
    };


    
    [self.view addSubview:_recordView];
    
    UIView * lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 0.5)];
    
    lineView.backgroundColor = [UIColor colorWithWhite:0.418 alpha:1.000];
    
    [_recordView addSubview:lineView];
    


    self.imgView = [[UIImageView alloc]initWithFrame:CGRectMake(kScreenWidth / 2 - 100, 64, 200, 30)];

    _imgView.layer.cornerRadius = 5;
    
    _imgView.layer.masksToBounds = YES;
    
    [self.view addSubview:_imgView];
    


}


- (void)backButtonAction:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}





@end
