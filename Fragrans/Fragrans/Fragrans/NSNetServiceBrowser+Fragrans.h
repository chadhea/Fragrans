//
//  NSNetServiceBrowser+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/29.
//

#import <Foundation/Foundation.h>
#import <SystemConfiguration/SystemConfiguration.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString  *const FRGReachabilityChangedNotification;

typedef NS_ENUM(NSUInteger, FRGNetworkStatus) {
    FRGNetworkStatusNotReachable = 0,
    FRGNetworkStatusViaWiFi,
    FRGNetworkStatusViaWWAN
};

@interface NSNetServiceBrowser (Fragrans)

@property (nonatomic,assign)SCNetworkReachabilityRef  frg_reachabilityRef;

- (FRGNetworkStatus)currentReachabilityStatus;

+ (instancetype)reachabilityForInternetConnection;

- (BOOL)startNotifier;

- (void)stopNotifier;

@end

NS_ASSUME_NONNULL_END
