//
//  ViewController1.m
//  GHSideMenu
//
//  Created by jzl on 16/6/6.
//  Copyright © 2016年 jiaozhenlong. All rights reserved.
//

#import "ViewController1.h"
#import <RESideMenu.h>

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Green";
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(leftClick)];

}
-(void)leftClick{
     [self.sideMenuViewController presentLeftMenuViewController];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
