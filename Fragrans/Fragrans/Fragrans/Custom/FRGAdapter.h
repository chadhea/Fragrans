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

@end

NS_ASSUME_NONNULL_END
