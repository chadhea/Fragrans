//
//  FRGAccountInfo.h
//  Fragrans
//
//  Created by qmz on 2019/4/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FRGAccountInfo : NSObject<NSCoding>

@property (nonatomic,copy)NSString    *isLogin;
@property (nonatomic,copy)NSString    *userID;
@property (nonatomic,copy)NSString    *face;
@property (nonatomic,copy)NSString    *nickname;
@property (nonatomic,copy)NSString    *sex;
@property (nonatomic,copy)NSString    *mobile;
@property (nonatomic,copy)NSString    *password;
@property (nonatomic,copy)NSString    *email;
@property (nonatomic,copy)NSString    *pushNotification;
@property (nonatomic,copy)NSString    *birthday;
@property (nonatomic,copy)NSString    *maxim;
@property (nonatomic,copy)NSString    *province;
@property (nonatomic,copy)NSString    *area;
@property (nonatomic,copy)NSString    *message;
@property (nonatomic,copy)NSString    *weichatName;
@property (nonatomic,copy)NSString    *qqName;
@property (nonatomic,copy)NSString    *weichatID;
@property (nonatomic,copy)NSString    *qqID;

/**
 获取本地用户信息
 */
+ (id)shareAccountInfo;

/**
 更新本地用户信息
 */
- (void)archiverAccount;

/**
 更新本地用户信息
 */
+ (void)archiverAccount:(id)archiver;

@end

NS_ASSUME_NONNULL_END
