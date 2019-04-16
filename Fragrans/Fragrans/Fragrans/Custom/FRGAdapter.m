//
//  FRGAdapter.m
//  Fragrans
//
//  Created by qmz on 2019/4/16.
//

#import "FRGAdapter.h"
#import "CustomBridge.h"
@implementation FRGAdapter
/**
 获取导航的高度
 */
- (CGFloat)frg_navHeight {
    if ([CustomBridge isIPhoneX]) {
        return 88;
    }else {
        return 64;
    }
}

/**
 获取tabBar的高度
 */
- (CGFloat)frg_tabBarHeight {
    if ([CustomBridge isIPhoneX]) {
        return 85;
    }else {
        return 49;
    }
}

/**
 获取底部圆角的高度
 */
- (CGFloat)frg_bottomRoundHeight {
    if ([CustomBridge isIPhoneX]) {
        return 24;
    }else {
        //不是iPhoneX系列手机没有底部圆角
        return 0;
    }
}

/**
 获取工具栏高度
 */
- (CGFloat)frg_toolHeight {
    if ([CustomBridge isIPhoneX]) {
        return 44;
    }else {
        return 20;
    }
}

@end
