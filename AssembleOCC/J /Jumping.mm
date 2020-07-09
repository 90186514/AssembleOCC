//
//  NSObject+Jumping.m
//  TestIOSCocos
//
//  Created by Ring on 2017/10/17.
//  Copyright © 2017年 Ring. All rights reserved.
//

#import "Jumping.h"

#include "cocos/audio/include/AudioEngine.h"
#include "cocos/scripting/js-bindings/manual/jsb_module_register.hpp"
#include "cocos/scripting/js-bindings/manual/jsb_global.h"
#include "cocos/scripting/js-bindings/jswrapper/SeApi.h"
#include "cocos/scripting/js-bindings/event/EventDispatcher.h"
#include "cocos/scripting/js-bindings/manual/jsb_classtype.hpp"
static Jumping *_sharedInstance = nil;

@implementation Jumping

+(Jumping*)sharedInstance{
    if (!_sharedInstance) {
        _sharedInstance =[[self alloc]init];
    }
    return _sharedInstance;
}

+(void)startGame{
    
    Jumping *jumping = [Jumping sharedInstance];
    jumping.originWindow = [[[UIApplication sharedApplication] delegate] window];
    CGRect frame = [UIScreen mainScreen].bounds;
    
    UIWindow* tmpWindow = [[UIWindow alloc] initWithFrame:frame];
    jumping.cocosWindow = tmpWindow;
    tmpWindow.backgroundColor = [UIColor clearColor];
    tmpWindow.windowLevel = UIWindowLevelNormal;
    
    RootViewController *rootVC = [[RootViewController alloc] init];
    tmpWindow.rootViewController = rootVC;
    rootVC.view.frame = tmpWindow.bounds;
    rootVC.view.backgroundColor = [UIColor clearColor];
    [tmpWindow makeKeyAndVisible];
}

+(void)exitGame:(NSDictionary *)dict{
    NSLog(@"Exit Game!");
    se::ScriptEngine::getInstance()->cleanup();
    Jumping *jumping = [Jumping sharedInstance];
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:jumping selector:@selector(delayMethod) userInfo:nil repeats:NO];
}

- (void)delayMethod{
    NSLog(@"delayMethodEnd");
    Jumping *jumping = [Jumping sharedInstance];
    [jumping.cocosWindow resignKeyWindow];
    [jumping.originWindow makeKeyAndVisible];
    jumping.cocosWindow = nil;
}

@end
