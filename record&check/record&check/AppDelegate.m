//
//  AppDelegate.m
//  record&check
//
//  Created by MJM on 2/15/16.
//  Copyright © 2016 mjm. All rights reserved.
//

#import "AppDelegate.h"
@class KMTabBarController;
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    UITabBarController *mainTabVC = [[UITabBarController alloc]init];
    // 1.添加第一个控制器
    // 1.1 初始化
    ViewController *oneVC = [[ViewController alloc]init];
    // 1.2 把oneVC添加为UINavigationController的根控制器
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:oneVC];
    // 设置tabBar的标题
    nav1.title = @"首页(下)";
    [nav1.navigationBar setBackgroundColor:[UIColor yellowColor]];
    //   [nav1.navigationBar setBackgroundImage:[UIImage imageNamed:@"commentary_num_bg"] forBarMetrics:UIBarMetricsDefault];
    // 设置tabBar的图标
    nav1.tabBarItem.image = [UIImage imageNamed:@"share_white"];
    // 设置navigationBar的标题
    oneVC.navigationItem.title = @"首页";
    // 设置背景色（这些操作可以交给每个单独子控制器去做）
    oneVC.view.backgroundColor = [UIColor whiteColor];
    // 1.3 把UINavigationController交给UITabBarController管理
    [self addChildViewController:nav1];

    self.window.rootViewController = mainTabVC;
    [self.window makeKeyAndVisible];
    return YES;    return YES;
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
