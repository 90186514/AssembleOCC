//
//  UICollectionView+YBGeneral.m
//  account
//
//  Created by KLP on 2018/11/20.
//  Copyright © 2018 KLP. All rights reserved.
//

#import "UICollectionView+YBGeneral.h"

@implementation UICollectionView (YBGeneral)

- (void)YBGeneral_configuration {
    if (@available(iOS 11.0, *)) {
        self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
}

@end
