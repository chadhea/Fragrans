//
//  UIScreen+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIScreen (Fragrans)

/**
 屏幕宽度
 */
+ (CGFloat)screenWidth;

/**
 屏幕高度
 */
+ (CGFloat)screenHeight;

/**
 屏幕分辨率
 */
+ (CGFloat)scale;


@end

NS_ASSUME_NONNULL_END
