//
//  AppDelegate.h
//  gtp
//
//  Created by WER on 2018/12/15.
//  Copyright © 2018 WER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, assign) UIInterfaceOrientationMask orientationMask;
+(void)showAlertDialog:(NSString *)title withMessage:(NSString *)message;
@end

