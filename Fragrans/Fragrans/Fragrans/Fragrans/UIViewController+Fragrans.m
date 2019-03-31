//
//  UIViewController+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/1/30.
//

#import "UIViewController+Fragrans.h"

@implementation UIViewController (Fragrans)

/**
 获取当前ViewController
 
 @return 返回当前界面ViewController
 */
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

/**
 添加视图
 
 */
- (void)addSubview:(UIView *)view {
    [self.view addSubview:view];
}

@end
