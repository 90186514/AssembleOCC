
#import "VC.h"

//#include "platform/CCApplication.h"
//#include "platform/ios/CCEAGLView-ios.h"
//#include "cocos/scripting/js-bindings/jswrapper/SeApi.h"
//
//#import "Jumping.h"
#import "CocosManager.h"
@interface VC (){
    UIView *cocosView;
    UIViewController * cocosVC;
}

@end

@implementation VC

-(void)viewDidLoad{
    [super viewDidLoad];
    [self YBGeneral_baseConfig];
    
    UIButton * bt = [[UIButton alloc] initWithFrame:CGRectMake( MAINSCREEN_WIDTH -100, MAINSCREEN_HEIGHT -100, 100, 100)];
    bt.backgroundColor = [UIColor clearColor];
    [bt addTarget:self action:@selector(clickStartGame:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
}

- (void)clickStartGame:(UIButton *)sender {
    NSLog(@"Start Game!");

//    CGRect bounds = [[UIScreen mainScreen] bounds];
//    cocosView = (__bridge CCEAGLView*)cocos2d::Application::getInstance()->getView();
//    cocosView.frame = bounds;
//    cocosView.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:cocosView];
    
    NSString *name = @"Game";
    cocosVC =  [[CocosManager getInstance] getCocosEaglView:name];
//    [[CocosManager getInstance]startCocosScene002];
//    if (!cocosView){
//        cocosView =   [[CocosManager instance] getCocosEaglView];
//        [self.view addSubview:cocosView];
//    }else{
//        [[CocosManager instance]startCocosScene002];
//    }
    
//    [Jumping startGame];
}


//- (BOOL) shouldAutorotate {
//    return NO;
//}
//
//- (BOOL)prefersStatusBarHidden {
//    return NO;
//}
//
//- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
//    return UIInterfaceOrientationMaskPortrait;
//}
//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
//    return UIInterfaceOrientationPortrait;
//}
@end
