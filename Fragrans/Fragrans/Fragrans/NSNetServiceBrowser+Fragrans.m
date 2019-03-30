//
//  NSNetServiceBrowser+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/29.
//

#import "NSNetServiceBrowser+Fragrans.h"
#import <netdb.h>
#import <objc/runtime.h>
static const char  *frg_reachabilityKey = "frg_reachabilityKey";
NSString   *const FRGReachabilityChangedNotification = @"FRGReachabilityChangedNotification";

static void frg_ReachabilityCallback(SCNetworkReachabilityRef target, SCNetworkReachabilityFlags flags, void* info) {
    NSNetServiceBrowser  *noteObject = (__bridge NSNetServiceBrowser *)info;
    [[NSNotificationCenter defaultCenter] postNotificationName: FRGReachabilityChangedNotification object: noteObject];
}

@implementation NSNetServiceBrowser (Fragrans)
- (SCNetworkReachabilityRef)frg_reachabilityRef {
    return (__bridge SCNetworkReachabilityRef _Nonnull)(objc_getAssociatedObject(self, frg_reachabilityKey));
}

- (void)setFrg_reachabilityRef:(SCNetworkReachabilityRef)frg_reachabilityRef {
    objc_setAssociatedObject(self, frg_reachabilityKey,(__bridge id _Nullable)(frg_reachabilityRef), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (FRGNetworkStatus)currentReachabilityStatus {
    FRGNetworkStatus returnValue = FRGNetworkStatusNotReachable;
    SCNetworkReachabilityFlags flags;
    
    if (SCNetworkReachabilityGetFlags(self.frg_reachabilityRef,&flags)) {
        returnValue = [self networkStatusForFlags:flags];
    }
    
    return returnValue;
}

- (FRGNetworkStatus)networkStatusForFlags:(SCNetworkReachabilityFlags)flags
{
    if ((flags & kSCNetworkReachabilityFlagsReachable) == 0) {
        return FRGNetworkStatusNotReachable;
    }
    
    FRGNetworkStatus returnValue = FRGNetworkStatusNotReachable;
    if ((flags & kSCNetworkReachabilityFlagsConnectionRequired) == 0) {
        returnValue = FRGNetworkStatusViaWiFi;
    }
    
    if ((((flags & kSCNetworkReachabilityFlagsConnectionOnDemand ) != 0) ||
         (flags & kSCNetworkReachabilityFlagsConnectionOnTraffic) != 0))
    {
        if ((flags & kSCNetworkReachabilityFlagsInterventionRequired) == 0) {
            returnValue = FRGNetworkStatusViaWiFi;
        }
    }
    if ((flags & kSCNetworkReachabilityFlagsIsWWAN) == kSCNetworkReachabilityFlagsIsWWAN) {
        
        returnValue = FRGNetworkStatusViaWWAN;
    }
    return returnValue;
}

+ (instancetype)reachabilityForInternetConnection {
    struct sockaddr_in zeroAddress;
    bzero(&zeroAddress, sizeof(zeroAddress));
    zeroAddress.sin_len = sizeof(zeroAddress);
    zeroAddress.sin_family = AF_INET;
    return [self reachabilityWithAddress: (const struct sockaddr *) &zeroAddress];
}

+ (instancetype)reachabilityWithAddress:(const struct sockaddr *)hostAddress {
    SCNetworkReachabilityRef reachability = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, hostAddress);
    NSNetServiceBrowser  *returnValue = NULL;
    
    if (reachability != NULL) {
        returnValue = [[self alloc] init];
        if (returnValue != NULL) {
            returnValue.frg_reachabilityRef = reachability;
        }
        else {
            CFRelease(reachability);
        }
    }
    return returnValue;
}

- (BOOL)startNotifier {
    BOOL returnValue = NO;
    SCNetworkReachabilityContext context = {0, (__bridge void *)(self), NULL, NULL, NULL};
//    FRG_WEAKSELF(self, weakSelf)
    if (SCNetworkReachabilitySetCallback(self.frg_reachabilityRef, frg_ReachabilityCallback, &context)) {
//        FRG_STRONGSELF(weakSelf, strongSelf)
        if (SCNetworkReachabilityScheduleWithRunLoop(self.frg_reachabilityRef, CFRunLoopGetCurrent(), kCFRunLoopDefaultMode)) {
            returnValue = YES;
        }
    }
    return returnValue;
}

- (void)stopNotifier {
    if (self.frg_reachabilityRef != NULL) {
        SCNetworkReachabilityUnscheduleFromRunLoop(self.frg_reachabilityRef, CFRunLoopGetCurrent(), kCFRunLoopDefaultMode);
    }
}


@end
