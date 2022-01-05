//
//  UIScreen+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/29.
//

#import "UIScreen+Fragrans.h"

@implementation UIScreen (Fragrans)

/**
 屏幕宽度
 */
+ (CGFloat)screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

/**
 屏幕高度
 */
+ (CGFloat)screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}

/**
 屏幕分辨率
 */
+ (CGFloat)scale {
    return [UIScreen mainScreen].scale;
}


@end
