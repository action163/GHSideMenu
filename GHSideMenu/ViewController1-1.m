//
//  ViewController1-1.m
//  GHSideMenu
//
//  Created by jzl on 16/6/6.
//  Copyright © 2016年 jiaozhenlong. All rights reserved.
//

#import "ViewController1-1.h"
#import <RESideMenu.h>

@interface ViewController1_1 ()
@property(nonatomic,strong)UILabel* showMsgLable;
@end

@implementation ViewController1_1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    self.title = @"Purple";
    self.view.backgroundColor = [UIColor purpleColor];
    
    //关闭sideMenuViewController手势效果
    self.sideMenuViewController.panGestureEnabled = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
