//
//  AppDelegate.m
//  group project
//
//  Created by Robert Thompson on 7/13/14.
//  Copyright (c) 2014 Google. All rights reserved.
//

#import "AppDelegate.h"
#import "ChatListViewController.h"
#import "dummyDiscoveryViewController.h"
#import "dummyProfileViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
   
    // Create the tab bar controller
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    // Set Tab bar controller as root view
    self.window.rootViewController = tabBarController;
    
    //Create Chat List NAV/VIEW CONTROLLER
    
    ChatListViewController *chatListVC = [[ChatListViewController alloc] init];
    UINavigationController *chatListNC = [[UINavigationController alloc] initWithRootViewController:chatListVC];
    
    //Create Discovery NAV/VIEW CONTROLLER
    //PUT IN THE RIGHT DISCOVERY INFO HERE
    
    
    dummyDiscoveryViewController *discoveryVC = [[dummyDiscoveryViewController alloc] init];
    UINavigationController *discoveryNC = [[UINavigationController alloc] initWithRootViewController:discoveryVC];
    
    
    //Create Profile NAV/VIEW CONTROLLER
    //PUT IN THE RIGHT PROFILE INFO HERE
    
    
    dummyProfileViewController *profileVC = [[dummyProfileViewController alloc] init];
    UINavigationController *profileNC = [[UINavigationController alloc] initWithRootViewController:profileVC];
    
    
    // Set tab order - Discovery, Chat and Profile
    
    tabBarController.viewControllers = @[discoveryNC, chatListNC, profileNC];
    
    //Set properties
    
    //set title on discovery
    discoveryNC.tabBarItem.title = @"Discovery";

    
    //set image on discvoery THIS IS A DUMMY, REPLACE WITH REAL IMAGE and uncomment below
    //discoveryNC.tabBarItem.image = [UIImage imageNamed:@"IMAGE-NAME"];
    
    //set title on chat
    chatListNC.tabBarItem.title = @"Chats";
    
    //set nav bar color
    chatListNC.navigationBar.barTintColor = [UIColor colorWithRed:230.0f/255.0f green:33.0f/255.0f blue:23.0f/255.0f alpha:1];
    chatListNC.navigationBar.translucent = NO;


    //set image on chat THIS IS A DUMMY, REPLACE WITH REAL IMAGE and uncomment below
    //chatNC.tabBarItem.image = [UIImage imageNamed:@"IMAGE-NAME"];
    
    //set title on chat
    profileNC.tabBarItem.title = @"Profile";
    
    //set image on chat THIS IS A DUMMY, REPLACE WITH REAL IMAGE and uncomment below
    //profileNC.tabBarItem.image = [UIImage imageNamed:@"IMAGE-NAME"];
    
   
    
    
    return YES;
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
