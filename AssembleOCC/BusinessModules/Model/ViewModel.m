
#import "ViewModel.h"

@implementation ViewModel

- (void)setDataIsForceInit:(BOOL)isForceInit{
    if (isForceInit) {
        
        UserInfoModel *userInfoModel = [UserInfoSingleton sharedUserInfoContext].userInfo;
        userInfoModel.currentDate = nil;
        [UserInfoManager SetNSUserDefaults:userInfoModel];
        
    }else{
        if (![UserInfoManager GetNSUserDefaults].currentDate) {
            UserInfoModel *userInfoModel = [UserInfoSingleton sharedUserInfoContext].userInfo;
            userInfoModel.currentDate = [NSDate date];
            
            [UserInfoManager SetNSUserDefaults:userInfoModel];
        }
    }
}
@end
