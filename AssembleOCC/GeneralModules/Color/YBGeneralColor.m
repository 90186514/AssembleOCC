//
//  YBGeneralColor.m
//  account
//
//  Created by KLP on 2018/11/19.
//  Copyright © 2018 KLP. All rights reserved.
//

#import "YBGeneralColor.h"

@implementation YBGeneralColor

+ (UIColor *)themeColor {
    return RGBCOLOR(29,113,217);
}

+ (UIColor *)navigationBarColor {
    return RGBCOLOR(29,113,217);
//    return kWhiteColor;
}

+ (UIColor *)navigationBarTitleColor {
    return [UIColor whiteColor];
//    return [UIColor darkTextColor];
}

+ (UIColor *)tabBarTitleNormalColor {
    return [UIColor darkGrayColor];
}

+ (UIColor *)tabBarTitleSelectedColor {
    return COLOR_RGB(86,129,247,1);
}

+ (UIColor *)seperaterColor {
    return [UIColor groupTableViewBackgroundColor];
}

@end
