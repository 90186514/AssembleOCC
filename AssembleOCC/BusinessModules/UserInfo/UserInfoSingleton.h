
#import <Foundation/Foundation.h>
#import "UserInfoModel.h"
@interface UserInfoSingleton : NSObject
@property(nonatomic,strong) UserInfoModel *userInfo;
+(UserInfoSingleton*)sharedUserInfoContext;
@end
