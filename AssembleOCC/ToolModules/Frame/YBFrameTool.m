//
//  YBFrameTool.m

#import "YBFrameTool.h"

@implementation YBFrameTool

+ (CGFloat)iphoneBottomHeight {
    return IS_iPhoneX ? 34.0 : 0.0;
}

+ (CGFloat)tabBarHeight {
    return [self iphoneBottomHeight] + 49.0;
}

+ (CGFloat)safeAdjustTabBarHeight {
    return [self iphoneBottomHeight] + 49.0;
}


+ (CGFloat)statusBarHeight {
    return IS_iPhoneX ? 44.0 : 20.0;
}

+ (CGFloat)navigationBarHeight {
    return 44.0;
}

+ (CGFloat)safeAdjustNavigationBarHeight {
    return [self statusBarHeight] + [self navigationBarHeight];
}
@end
