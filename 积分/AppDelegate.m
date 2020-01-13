//
//  AppDelegate.m
//  积分
//
//  Created by 我要变好看 on 2020/1/7.
//  Copyright © 2020 com.my.friends. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    ViewController *vc = [[ViewController alloc]init];
    UINavigationController *nc = [[UINavigationController alloc]initWithRootViewController:vc];
    self.window.rootViewController = nc;
    [self.window makeKeyWindow];
    return YES;
}



@end
