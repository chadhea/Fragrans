//
//  CustomBridge.m
//  Fragrans
//
//  Created by qmz on 2019/4/9.
//

#import "CustomBridge.h"

@implementation CustomBridge
+ (BOOL)isEmpty:(NSObject *)object {
    if (object == nil) {
        return YES;
    }
    if (object == NULL) {
        return YES;
    }
    if ([object isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([object isKindOfClass:[NSString class]]) {
        return [self isBlankString:(NSString *)object];
    }
    if ([object isKindOfClass:[NSData class]]) {
        return [((NSData *)object) length] <= 0;
    }
    if ([object isKindOfClass:[NSDictionary class]]) {
        return [((NSDictionary *)object) count] <= 0;
    }
    if ([object isKindOfClass:[NSArray class]]) {
        return [((NSArray *)object) count] <= 0;
    }
    if ([object isKindOfClass:[NSSet class]]) {
        return [((NSSet *)object) count] <= 0;
    }
    return NO;
}
+ (BOOL)isBlankString:(NSString *)string {
    if (string == NULL ||
        [string isEqual:nil] ||
        [string isEqual:Nil]) {
        return YES;
    }else if ([string isEqual:[NSNull null]]) {
        return YES;
    }else if ([string length] == 0 ||
              [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]length] == 0) {
        return YES;
    }else if ([string isEqualToString:@"null"] ||
              [string isEqualToString:@"<null>"] ||
              [string isEqualToString:@"(null)"]) {
        return YES;
    }
    return NO;
}
+ (NSString *)safeString:(NSString *)string {
    if ([string isKindOfClass:[NSNumber class]]) {
        NSNumber   *numStr = (NSNumber *)string;
        return [numStr stringValue];
    }else if ([self isBlankString:string]) {
        return @"";
    }
    return [NSString stringWithFormat:@"%@",string];
}
+ (UIViewController *)getCurrentVC {
    UIViewController   *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    return [self getCurrentVCFrom:rootVC];
}
+ (UIViewController *)getCurrentVCFrom:(UIViewController *)rootVC {
    UIViewController *currentVC;
    if ([rootVC presentedViewController]) {
        rootVC = [self getCurrentVCFrom:rootVC.presentedViewController];
    }
    if ([rootVC isKindOfClass:[UITabBarController class]]) {
        currentVC = [self getCurrentVCFrom:[(UITabBarController *)rootVC selectedViewController]];
    }else if ([rootVC isKindOfClass:[UINavigationController class]]) {
        currentVC = [self getCurrentVCFrom:[(UINavigationController *)rootVC visibleViewController]];
    }else {
        currentVC = rootVC;
    }
    return currentVC;
    
}
@end
