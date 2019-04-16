//
//  FRGAccountInfo.h
//  Fragrans
//
//  Created by qmz on 2019/4/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FRGAccountInfo : NSObject<NSCoding>

@property (nonatomic,copy)NSString    *isLogin;/**是否登录*/
@property (nonatomic,copy)NSString    *userID;/**用户id*/
@property (nonatomic,copy)NSString    *nickname;/**用户昵称*/
@property (nonatomic,copy)NSString    *headPic;/**用户头像*/
@property (nonatomic,copy)NSString    *sex;/**用户性别*/
@property (nonatomic,copy)NSString    *mobile;/**用户手机*/
@property (nonatomic,copy)NSString    *password;/**用户密码*/
@property (nonatomic,copy)NSString    *email;/**用户邮箱*/
@property (nonatomic,copy)NSString    *pushNotification;/**是否通知*/
@property (nonatomic,copy)NSString    *birthday;/**生日信息*/
@property (nonatomic,copy)NSString    *maxim;/**简介信息*/
@property (nonatomic,copy)NSString    *province;/**省*/
@property (nonatomic,copy)NSString    *area;/**市区*/
@property (nonatomic,copy)NSString    *message;/**信息*/
@property (nonatomic,copy)NSString    *weichatName;/**微信名称*/
@property (nonatomic,copy)NSString    *weichatID;/**微信id*/
@property (nonatomic,copy)NSString    *qqName;/**qq名称*/
@property (nonatomic,copy)NSString    *qqID;/**qqid*/

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
