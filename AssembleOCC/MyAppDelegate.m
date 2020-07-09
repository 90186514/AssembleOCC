//
//  AppDelegate.m
//  gtp
//
//  Created by WER on 2018/12/15.
//  Copyright © 2018 WER. All rights reserved.
//

#import "MyAppDelegate.h"
#import "VC.h"

#import "cocos2d.h"
#import "AppDelegate.h"
@interface MyAppDelegate ()

@end

using namespace cocos2d;

@implementation MyAppDelegate

//Application* app = nullptr;
//@synthesize window;

- (void)initRootUI {
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.rootViewController = [VC new] ;
    _window.backgroundColor = [UIColor whiteColor];
    [_window makeKeyAndVisible];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [[ViewModel new] setDataIsForceInit:YES];
//    [self initRootUI];
    
    float scale = [[UIScreen mainScreen] scale];
    CGRect bounds = [[UIScreen mainScreen] bounds];
    _window = [[UIWindow alloc] initWithFrame: bounds];
    _window.rootViewController = [VC new] ;
    _window.backgroundColor = [UIColor whiteColor];
    [_window makeKeyAndVisible];
    // cocos2d application instance
//    app = new AppDelegate(bounds.size.width * scale, bounds.size.height * scale);
//    app->setMultitouch(true);
//
//    app->start();
    
//    _orientationMask = UIInterfaceOrientationMaskPortrait;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
//    app->applicationDidEnterBackground();
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
//    app->applicationWillEnterForeground();
}


- (void)applicationWillTerminate:(UIApplication *)application {
    
}

+(void)showAlertDialog:(NSString *)title withMessage:(NSString *)message {
    
    NSLog(@"======showAlertDialogshowAlertDialog==========");
}
@end
