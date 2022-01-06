//
//  FRGAdapter.m
//  Fragrans
//
//  Created by qmz on 2019/4/16.
//

#import "FRGAdapter.h"
#import "UIDevice+Fragrans.h"
@implementation FRGAdapter
/**
 获取导航的高度
 */
- (CGFloat)frg_navHeight {
    return [FRGAdapter frg_navHeight];
}
+ (CGFloat)frg_navHeight {
    if ([UIDevice isLeoHair]) {
        return 88;
    }else {
        return 64;
    }
}

/**
 获取tabBar的高度
 */
- (CGFloat)frg_tabBarHeight {
    return [FRGAdapter frg_tabBarHeight];
}
+ (CGFloat)frg_tabBarHeight {
    if ([UIDevice isLeoHair]) {
        return 85;
    }else {
        return 49;
    }
}

/**
 获取底部圆角的高度
 */
- (CGFloat)frg_bottomRoundHeight {
    return [FRGAdapter frg_bottomRoundHeight];
}
+ (CGFloat)frg_bottomRoundHeight {
    if ([UIDevice isLeoHair]) {
        return 34;
    }else {
        //不是iPhoneX系列手机没有底部圆角
        return 0;
    }
}

/**
 获取工具栏高度
 */
- (CGFloat)frg_toolHeight {
    return [FRGAdapter frg_toolHeight];
}
+ (CGFloat)frg_toolHeight {
    if ([UIDevice isLeoHair]) {
        return 44;
    }else {
        return 20;
    }
}

/**
 自动适配宽
 以6尺寸等比例缩放
 */
- (CGFloat)frg_atuoSizeWithSix_width:(CGFloat)width {
    return [FRGAdapter frg_atuoSizeWithSix_width:width];
}
+ (CGFloat)frg_atuoSizeWithSix_width:(CGFloat)width {
    return width * ([UIScreen mainScreen].bounds.size.width) / 375.0;
}

/**
 自动适配高
 以6尺寸等比例缩放
 */
- (CGFloat)frg_atuoSizeWithSix_height:(CGFloat)height {
    return [FRGAdapter frg_atuoSizeWithSix_height:height];
}
+ (CGFloat)frg_atuoSizeWithSix_height:(CGFloat)height {
    return (height * ([UIScreen mainScreen].bounds.size.height) / 667.0);
}

/**
 自动适配宽
 以plus尺寸等比例缩放
 */
- (CGFloat)frg_atuoSizeWithPlus_width:(CGFloat)width {
    return [FRGAdapter frg_atuoSizeWithPlus_width:width];
}
+ (CGFloat)frg_atuoSizeWithPlus_width:(CGFloat)width {
    return width * ([UIScreen mainScreen].bounds.size.width) / 414.0;
}

/**
 自动适配高
 以plus尺寸等比例缩放
 */
- (CGFloat)frg_atuoSizeWithPlus_height:(CGFloat)height {
    return [FRGAdapter frg_atuoSizeWithPlus_height:height];
}
+ (CGFloat)frg_atuoSizeWithPlus_height:(CGFloat)height {
    return (height * ([UIScreen mainScreen].bounds.size.height) / 736.0);
}

@end
