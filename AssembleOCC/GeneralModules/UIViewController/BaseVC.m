
//
//  BaseVC.m
//  PLLL
//
//  Created by GT on 2019/1/8.
//  Copyright © 2019 GT. All rights reserved.
//

#import "BaseVC.h"
@interface BaseVC ()
@end

@implementation BaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self YBGeneral_baseConfig];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didNetworkStatusRefush:) name:kNotify_NetWorkingStatusRefresh object:nil];
}

- (void)loginSuccessBlockMethod{
//    NSLog(@",,,,");
}

-(void)locateTabBar:(NSInteger)index{
    
    if (self.navigationController.tabBarController.selectedIndex == index) {
        
        [self.navigationController popToRootViewControllerAnimated:YES];
        
    }else{
        self.navigationController.tabBarController.hidesBottomBarWhenPushed = NO;
        
        self.navigationController.tabBarController.selectedIndex = index;
        
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}
@end

