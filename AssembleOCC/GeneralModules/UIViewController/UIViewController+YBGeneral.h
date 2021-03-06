//
//  UIViewController+YBGeneral.h
//  account
//
//  Created by KLP on 2018/11/19.
//  Copyright © 2018 KLP. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (YBGeneral)<UINavigationControllerDelegate>

/** 基础配置 */
- (void)YBGeneral_baseConfig;

@end

@interface UIViewController (YBGeneralBackItem)

/** 配置通用系统导航栏返回按钮 */
- (void)YBGeneral_configBackItem;

/** 重写该方法以自定义系统导航栏返回按钮点击事件 */
- (void)YBGeneral_clickBackItem:(UIBarButtonItem *)item;

@end

NS_ASSUME_NONNULL_END
