//
//  YBNotificationManager.h
//  Created by WER on 2018/12/19.
//  Copyright © 2018 WER. All rights reserved.
//

#import <Foundation/Foundation.h>
FOUNDATION_EXTERN NSString * const kNotify_NetWorkingStatusRefresh;

FOUNDATION_EXTERN NSString * const kNotify_IsLoginRefresh;

extern NSString* const kIsLogin;
extern NSString* const kUserName;
extern NSString* const kUserPW;
extern NSString* const kUserInfo;

extern NSString* const kPayMethodesInPostAds;
extern NSString* const kFixedAccountsInPostAds;

extern NSString* const kIndexSection;
extern NSString* const kIndexInfo;
extern NSString* const kIndexRow;

extern NSString* const kType ;
extern NSString* const kIsOn ;
extern NSString* const kImg;
extern NSString* const kTit;
extern NSString* const kSubTit;
extern NSString* const kAmount;
extern NSString* const kDate;
extern NSString* const kTotal;
extern NSString* const kColor;
extern NSString* const kUrl;
extern NSString* const kArr;
extern NSString* const kData;



typedef NS_ENUM(NSUInteger,EnumActionTag){
    EnumActionTag0 = 0 ,
    EnumActionTag1  ,
    EnumActionTag2  ,
    EnumActionTag3  ,
    EnumActionTag4  ,
    EnumActionTag5  ,
    EnumActionTag6  ,
};

NS_ASSUME_NONNULL_BEGIN

@interface YBNotificationManager : NSObject
@end

NS_ASSUME_NONNULL_END
