
#import "UserInfoManager.h"

@implementation UserInfoManager

+(void)SetNSUserDefaults:(UserInfoModel *)userInfo{
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:userInfo];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:data forKey:kUserInfo];
    [defaults synchronize];
}

+(UserInfoModel *)GetNSUserDefaults{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *data = [defaults objectForKey:kUserInfo];
    return [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

+(void)DeleteNSUserDefaults{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults removeObjectForKey:kUserInfo];
}
@end
