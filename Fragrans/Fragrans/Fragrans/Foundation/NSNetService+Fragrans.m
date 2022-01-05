//
//  NSNetService+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/29.
//

#import "NSNetService+Fragrans.h"
#import <objc/runtime.h>
static const void  *frg_NetService_UtilityKey = &frg_NetService_UtilityKey;

@implementation NSNetService (Fragrans)

- (NSNetServiceBrowser *)frg_reachAbility {
    return objc_getAssociatedObject(self, @selector(frg_reachAbility));
}
- (void)setFrg_reachAbility:(NSNetServiceBrowser *)frg_reachAbility {
    objc_setAssociatedObject(self, @selector(frg_reachAbility), frg_reachAbility, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (FRGNetworkStatus)frg_networkStatus {
    return [objc_getAssociatedObject(self, _cmd) integerValue];
}
- (void)setFrg_networkStatus:(FRGNetworkStatus)frg_networkStatus {
    objc_setAssociatedObject(self, @selector(frg_networkStatus), @(frg_networkStatus), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (frg_networkChangeBlock)networkChangeBlock {
    return objc_getAssociatedObject(self, frg_NetService_UtilityKey);
}

- (void)setNetworkChangeBlock:(frg_networkChangeBlock)networkChangeBlock {
    objc_setAssociatedObject(self, frg_NetService_UtilityKey, networkChangeBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

+ (instancetype)sharedInstance {
    static dispatch_once_t pred = 0;
    __strong static NSNetService * _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [self frg_initWithNetworkAbility];
    });
    return _sharedObject;
}

+ (instancetype)frg_initWithNetworkAbility {
    NSNetService  *ser = [[NSNetService alloc] init];
    ser.frg_reachAbility  = [NSNetServiceBrowser reachabilityForInternetConnection];
    [ser.frg_reachAbility startNotifier];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reachabilityChanged:) name:FRGReachabilityChangedNotification object:nil];
    return ser;
}

+ (void)reachabilityChanged:(NSNotification *)noti {
    NSNetServiceBrowser  *curReach = [noti object];
    if (![curReach isKindOfClass:[NSNetServiceBrowser class]]) {
        return;
    }
    NSLog(@"----noti--->>>%@",noti);
    FRGNetworkStatus status = [curReach currentReachabilityStatus];
    NSNetService   *ser = [NSNetService sharedInstance];
    ser.frg_networkStatus = status;
    if (ser.networkChangeBlock) {
        ser.networkChangeBlock(status);
    }
}

/**
 检查网络
 */
+ (BOOL)checkNetWork {
    [[NSNetService sharedInstance]check];
    return [NSNetService sharedInstance].frg_networkStatus == FRGNetworkStatusViaWiFi ||
    [NSNetService sharedInstance].frg_networkStatus == FRGNetworkStatusViaWWAN;
}

/**
 是否是wifi
 */
+ (BOOL)checkNetWork_WiFi {
    [[NSNetService sharedInstance]check];
    return [NSNetService sharedInstance].frg_networkStatus == FRGNetworkStatusViaWiFi;
}

/**
 是否是2g3g4g5g
 */
+ (BOOL)checkNetWork_WWAN {
    [[NSNetService sharedInstance]check];
    return [NSNetService sharedInstance].frg_networkStatus == FRGNetworkStatusViaWWAN;
}

- (void)check {
    FRGNetworkStatus status = [self.frg_reachAbility currentReachabilityStatus];
    self.frg_networkStatus = status;
}

/**
 断开网络监听
 */
+ (void)stopNetworkMonitoring {
    [[NSNetService sharedInstance].frg_reachAbility stopNotifier];
}

@end
