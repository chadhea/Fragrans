//
//  FRGAdapter.h
//  Fragrans
//
//  Created by qmz on 2019/4/16.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface FRGAdapter : NSObject
/**
 获取导航的高度
 */
- (CGFloat)frg_navHeight;

/**
 获取tabBar的高度
 */
- (CGFloat)frg_tabBarHeight;

/**
 获取底部圆角的高度
 */
- (CGFloat)frg_bottomRoundHeight;

/**
 获取工具栏高度
 */
- (CGFloat)frg_toolHeight;

/**
 自动适配宽
 以6尺寸等比例缩放
 */
+ (CGFloat)frg_atuoSizeWithSix_width:(CGFloat)width;

/**
 自动适配高
 以6尺寸等比例缩放
 */
+ (CGFloat)frg_atuoSizeWithSix_height:(CGFloat)height;

/**
 自动适配宽
 以plus尺寸等比例缩放
 */
+ (CGFloat)frg_atuoSizeWithPlus_width:(CGFloat)width;

/**
 自动适配高
 以plus尺寸等比例缩放
 */
+ (CGFloat)frg_atuoSizeWithPlus_height:(CGFloat)height;

@end

NS_ASSUME_NONNULL_END
