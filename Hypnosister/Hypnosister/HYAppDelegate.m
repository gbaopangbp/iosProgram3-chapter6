//
//  HYAppDelegate.m
//  Hypnosister
//
//  Created by tirostiros on 15-1-6.
//  Copyright (c) 2015年 cn.com.tiros. All rights reserved.
//

#import "HYAppDelegate.h"
#import "HYnosisView.h"

@interface HYAppDelegate ()
@property(nonatomic,strong)HYnosisView *view;
@end

@implementation HYAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    CGRect sreen =  [self.window bounds];
    
    //滑动功能
//    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:sreen];
//    [self.window addSubview:scroll];
//
//    CGRect bigRect = CGRectMake(0, 0, sreen.size.width*2, sreen.size.height);
//    HYnosisView *view = [[HYnosisView alloc] initWithFrame:sreen];
//    [scroll addSubview:view];
//    
//    sreen.origin.x = sreen.size.width;
//    
//    HYnosisView *another = [[HYnosisView alloc]initWithFrame:sreen];
//    [scroll addSubview:another];
//    [scroll setContentSize:bigRect.size];
//    [scroll setPagingEnabled:YES];
//    BOOL res = [view becomeFirstResponder];
//    if (res)
//    {
//        NSLog(@"beacme first success");
//    }
//    else
//    {
//        NSLog(@"became first fail");
//    }
    
    
    //缩放功能
    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:sreen];
    _view = [[HYnosisView alloc] initWithFrame:sreen];
    [self.window addSubview:scroll];
    [scroll addSubview:_view];
    [scroll setMaximumZoomScale:5.0];
    [scroll setMinimumZoomScale:1.0];
    [scroll setDelegate:self];
    

    
    [self.window makeKeyAndVisible];
    return YES;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return _view;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
