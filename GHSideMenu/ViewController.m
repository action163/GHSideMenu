//
//  ViewController.m
//  GHSideMenu
//
//  Created by jzl on 16/6/6.
//  Copyright © 2016年 jiaozhenlong. All rights reserved.
//

#import "ViewController.h"
#import <RESideMenu.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"Blue";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(leftClick)];
    self.view.backgroundColor = [UIColor blueColor];
}
-(void)leftClick{
    //推出LeftMenuViewController
    [self.sideMenuViewController presentLeftMenuViewController];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
