//
//  AppDelegate.m
//  GHSideMenu
//
//  Created by jzl on 16/6/6.
//  Copyright © 2016年 jiaozhenlong. All rights reserved.
//

#import "AppDelegate.h"
#import <RESideMenu.h>
#import "ViewController.h"
#import "LeftController.h"
#import "ViewController1.h"
@interface AppDelegate ()
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //在AppDelegate.h中声明属性，初始化tabBarController
    self.tabBar = [[UITabBarController alloc] init];
    
    ViewController* vc1 = [[ViewController alloc] init];
    vc1.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
    UINavigationController* nav1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    
    ViewController1* vc2 = [[ViewController1 alloc] init];
    vc2.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:1];
    UINavigationController* nav2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    
    self.tabBar.viewControllers = @[nav1,nav2];
    
    
    //初始化leftVC
    LeftController* left = [[LeftController alloc] init];
   
    //初始化RESideMenu
    RESideMenu* menu = [[RESideMenu alloc] initWithContentViewController:self.tabBar leftMenuViewController:left rightMenuViewController:nil];
    self.window.rootViewController= menu;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
