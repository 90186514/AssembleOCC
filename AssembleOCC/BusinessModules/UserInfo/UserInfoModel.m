
#import "UserInfoModel.h"

@implementation UserInfoModel

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeBool:self.isLogin forKey:@"isLogin"];
    [aCoder encodeObject:self.paySource     forKey:@"paySource"];
    [aCoder encodeObject:self.tagArrs     forKey:@"tagArrs"];
    [aCoder encodeObject:self.currentDate     forKey:@"currentDate"];
    [aCoder encodeObject:self.purseArr     forKey:@"purseArr"];
    
    [aCoder encodeObject:self.phoneNumber     forKey:@"phoneNumber"];
    [aCoder encodeObject:self.cookie forKey:@"cookie"];
    [aCoder encodeInteger:self.type forKey:@"type"];
    [aCoder encodeObject:self.deviceid forKey:@"deviceid"];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self =[super init]) {
        self.isLogin = [aDecoder decodeBoolForKey:@"isLogin"];
        self.paySource = [aDecoder     decodeObjectForKey:@"paySource"];
        self.tagArrs = [aDecoder     decodeObjectForKey:@"tagArrs"];
        self.currentDate = [aDecoder     decodeObjectForKey:@"currentDate"];
        self.purseArr = [aDecoder     decodeObjectForKey:@"purseArr"];
        
        self.phoneNumber = [aDecoder     decodeObjectForKey:@"phoneNumber"];
        self.cookie = [aDecoder decodeObjectForKey:@"cookie"];
        self.type = [aDecoder     decodeIntegerForKey:@"type"];
        self.deviceid = [aDecoder decodeObjectForKey:@"deviceid"];
    }
    return self;
}
@end


