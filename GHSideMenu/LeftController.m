//
//  LeftController.m
//  GHSideMenu
//
//  Created by jzl on 16/6/6.
//  Copyright © 2016年 jiaozhenlong. All rights reserved.
//

#import "LeftController.h"
#import "ViewController1-1.h"
#import <RESideMenu.h>
#import "AppDelegate.h"

@interface LeftController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView* tableView;
@property(nonatomic,strong)NSArray* array;
@end

#define kWidth   [UIScreen mainScreen].bounds.size.width
#define kHeight   [UIScreen mainScreen].bounds.size.height
@implementation LeftController


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:0 green:43/255.0 blue:100/255.0 alpha:0.8];
    
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, kWidth, kHeight-200) style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    
    self.array = @[@"🏠开通会员",@"💰QQ钱包",@"🐷个性装扮",@"👋我的收藏",@"🐘我的相册",@"📃我的文件",@"📛我的名片夹"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.array.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60.0;
}
-(UITableViewCell* )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.backgroundColor = [UIColor clearColor];
    
    UIColor *color = [[UIColor alloc]initWithRed:220/255.0 green:230/255.0 blue:240/255.0 alpha:0.5];
    cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cell.frame];
    cell.selectedBackgroundView.backgroundColor = color;
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    cell.textLabel.text = [self.array objectAtIndex:indexPath.row];
    cell.textLabel.highlightedTextColor = [UIColor greenColor];
    cell.textLabel.textColor = [UIColor whiteColor];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    AppDelegate* GHDelegate = (AppDelegate* )[UIApplication sharedApplication].delegate;
    ViewController1_1* vc = [[ViewController1_1 alloc] init];
    
    //通过GHDelegate.tabBar.selectedIndex获得当前tabbaritem对应的nav,进行页面跳转
    NSArray *arrControllers = GHDelegate.tabBar.viewControllers;
    
    if (GHDelegate.tabBar.selectedIndex==0) {
        UINavigationController* nav = (UINavigationController* )[arrControllers objectAtIndex:0];
        //隐藏sideMenuViewController
        [self.sideMenuViewController hideMenuViewController];
        //隐藏底部
        vc.hidesBottomBarWhenPushed = YES;
        [nav pushViewController:vc animated:YES];
    }else{
        UINavigationController* nav = (UINavigationController* )[arrControllers objectAtIndex:1];
        [self.sideMenuViewController hideMenuViewController];
        vc.hidesBottomBarWhenPushed = YES;
        [nav pushViewController:vc animated:YES];
    }
    
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
