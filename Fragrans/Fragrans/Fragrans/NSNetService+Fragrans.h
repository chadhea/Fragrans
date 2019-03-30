//
//  NSNetService+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/29.
//

#import <Foundation/Foundation.h>
#import "NSNetServiceBrowser+Fragrans.h"

NS_ASSUME_NONNULL_BEGIN

typedef  void(^frg_networkChangeBlock)(FRGNetworkStatus status);/**< 网络发生改变*/

@interface NSNetService (Fragrans)

@property (nonatomic,strong)NSNetServiceBrowser *frg_reachAbility;

@property (nonatomic,assign)FRGNetworkStatus frg_networkStatus;

/**
 网络发生改变的回调
 
 e.g:
 
 [NSNetService sharedInstance].networkChangeBlock = ^(FRGNetworkStatus status) {
    //判断网络状态
 };
 */
@property (nonatomic,copy)frg_networkChangeBlock networkChangeBlock;

/**
 创建单例
 
 注：默认自动开启网络监听
 */
+ (instancetype)sharedInstance;

/**
 检查网络
 
 @return wifi或者wwan返回yes
 */
+ (BOOL)checkNetWork;

/**
 是否是wifi
 */
+ (BOOL)checkNetWork_WiFi;

/**
 是否是2g3g4g5g
 */
+ (BOOL)checkNetWork_WWAN;

/**
 断开网络监听
 */
+ (void)stopNetworkMonitoring;


@end

NS_ASSUME_NONNULL_END
