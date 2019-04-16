//
//  FRGAccountInfo.m
//  Fragrans
//
//  Created by qmz on 2019/4/16.
//

#import "FRGAccountInfo.h"
#import "FragransDefine.h"

static   FRGAccountInfo   *accountInfo;

@implementation FRGAccountInfo
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        self.headPic = [aDecoder decodeObjectForKey:@"headPic"];
        self.nickname = [aDecoder decodeObjectForKey:@"nickname"];
        self.sex = [aDecoder decodeObjectForKey:@"sex"];
        self.mobile = [aDecoder decodeObjectForKey:@"mobile"];
        self.password = [aDecoder decodeObjectForKey:@"password"];
        self.pushNotification = [aDecoder decodeObjectForKey:@"pushNotification"];
        self.isLogin = [aDecoder decodeObjectForKey:@"isLogin"];
        self.userID = [aDecoder decodeObjectForKey:@"userID"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.birthday = [aDecoder decodeObjectForKey:@"birthday"];
        self.maxim = [aDecoder decodeObjectForKey:@"maxim"];
        self.area = [aDecoder decodeObjectForKey:@"area"];
        self.message = [aDecoder decodeObjectForKey:@"message"];
        self.province = [aDecoder decodeObjectForKey:@"province"];
        self.weichatID = [aDecoder decodeObjectForKey:@"weichatID"];
        self.qqID = [aDecoder decodeObjectForKey:@"qqID"];
        self.weichatName = [aDecoder decodeObjectForKey:@"weichatName"];
        self.qqName = [aDecoder decodeObjectForKey:@"qqName"];
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.headPic forKey:@"headPic"];
    [aCoder encodeObject:self.nickname forKey:@"nickname"];
    [aCoder encodeObject:self.sex forKey:@"sex"];
    [aCoder encodeObject:self.mobile forKey:@"mobile"];
    [aCoder encodeObject:self.password forKey:@"password"];
    [aCoder encodeObject:self.pushNotification forKey:@"pushNotification"];
    [aCoder encodeObject:self.isLogin forKey:@"isLogin"];
    [aCoder encodeObject:self.userID forKey:@"userID"];
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.birthday forKey:@"birthday"];
    [aCoder encodeObject:self.maxim forKey:@"maxim"];
    [aCoder encodeObject:self.message forKey:@"message"];
    [aCoder encodeObject:self.area forKey:@"area"];
    [aCoder encodeObject:self.province forKey:@"province"];
    [aCoder encodeObject:self.weichatID forKey:@"weichatID"];
    [aCoder encodeObject:self.qqID forKey:@"qqID"];
    [aCoder encodeObject:self.weichatName forKey:@"weichatName"];
    [aCoder encodeObject:self.qqName forKey:@"qqName"];
    
}

+ (id)frg_accountInfo {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!accountInfo) {
            accountInfo = [[FRGAccountInfo alloc]init];
        }
    });
    return accountInfo;
}

/**
 获取本地用户信息
 */
+ (id)shareAccountInfo {
    if ([self unarchiverWith:@"frg_accountInfo"]) {
        accountInfo = [self unarchiverWith:@"frg_accountInfo"];
    }else {
        accountInfo = [self frg_accountInfo];
    }
    return accountInfo;
}

+ (NSData *)archiverWith:(id)archiver {
    return [NSKeyedArchiver archivedDataWithRootObject:archiver];
}

+ (void)archiverWith:(id)archiver key:(NSString *)key {
    NSData   *serialData = [self archiverWith:archiver];
    [frg_kUSER_DEFAULT setObject:serialData forKey:key];
    [frg_kUSER_DEFAULT synchronize];
}

+ (id)unarchiverWith:(NSString *)key {
    if ([frg_kUSER_DEFAULT objectForKey:key]) {
        return [NSKeyedUnarchiver unarchiveObjectWithData:[frg_kUSER_DEFAULT objectForKey:key]];
    }
    return nil;
}

/**
 更新本地用户信息
 */
- (void)archiverAccount {
    [FRGAccountInfo archiverAccount:self];
}

/**
 更新本地用户信息
 */
+ (void)archiverAccount:(id)archiver {
    [self archiverWith:archiver key:@"frg_accountInfo"];
}

@end
