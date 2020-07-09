
#import <Foundation/Foundation.h>
#import "UserInfoModel.h"
#import "UserInfoSingleton.h"
@interface UserInfoManager : NSObject
+(void)SetNSUserDefaults:(UserInfoModel *)userInfo;
+(UserInfoModel *)GetNSUserDefaults;
+(void)DeleteNSUserDefaults;
@end
