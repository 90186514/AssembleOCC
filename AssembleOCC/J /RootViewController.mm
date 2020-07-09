/****************************************************************************
 Copyright (c) 2013      cocos2d-x.org
 Copyright (c) 2013-2017 Chukong Technologies Inc.

 http://www.cocos2d-x.org

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 ****************************************************************************/

#import "MyAppDelegate.h"
#import "RootViewController.h"
#import "cocos2d.h"
#import "platform/ios/CCEAGLView-ios.h"
//#include "scripting/lua-bindings/manual/CCLuaEngine.h"
#include "cocos/audio/include/AudioEngine.h"
#include "cocos/scripting/js-bindings/manual/jsb_module_register.hpp"
#include "cocos/scripting/js-bindings/manual/jsb_global.h"
#include "cocos/scripting/js-bindings/jswrapper/SeApi.h"
#include "cocos/scripting/js-bindings/event/EventDispatcher.h"
#include "cocos/scripting/js-bindings/manual/jsb_classtype.hpp"

#import "AppDelegate.h"

@interface RootViewController(){
    UIView *cocosView;
    UIViewController * cocosVC;
}

@end

using namespace cocos2d;

@implementation RootViewController
//Application* app = nullptr;


- (void)loadView {
    // Initialize the CCEAGLView
}

- (void)viewDidLoad {
//    //run the cocos2d-x game scene
//    cocos2d::Application::getInstance()->run();
    
//    float scale = [[UIScreen mainScreen] scale];
        CGRect bounds = [[UIScreen mainScreen] bounds];
//        // cocos2d application instance
//    app = new AppDelegate(bounds.size.width * scale, bounds.size.height * scale);
//    app->setMultitouch(true);
//
//    app->start();
    
    
    cocosView = (__bridge CCEAGLView*)cocos2d::Application::getInstance()->getView();
    cocosView.frame = bounds;
    cocosView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:cocosView];
}

-(void)cleanUp {
//    delete s_sharedApplication;
//    s_sharedApplication = nullptr;
//    cocos2d::Application::sm_pSharedApplication = 0;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self cleanUp];
}


// For ios6, use supportedInterfaceOrientations & shouldAutorotate instead
#ifdef __IPHONE_6_0
//- (NSUInteger) supportedInterfaceOrientations{
//    return UIInterfaceOrientationMaskAllButUpsideDown;
//}
#endif

- (BOOL) shouldAutorotate {
    return YES;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];

    
}

//fix not hide status on ios7
- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationLandscapeRight;
}

@end
