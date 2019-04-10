//
//  UIActivityIndicatorView+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/4/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIActivityIndicatorView (Fragrans)

/**
 UIActivityIndicatorView
 frame + style + color + startAnimate
 
 @param color 中间动画部分颜色 UIColor或者NSString或者NSNumber格式
 @param startAnimate 是否开始动画
 */
+ (UIActivityIndicatorView *)activityIndicatorViewWithFrame:(CGRect)frame style:(UIActivityIndicatorViewStyle)style color:(nullable id)color startAnimate:(BOOL)startAnimate;

/**
 UIActivityIndicatorView
 frame + style + color + backgroundColor + startAnimate
 
 @param color 中间动画部分颜色 UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param startAnimate 是否开始动画
 */
+ (UIActivityIndicatorView *)activityIndicatorViewWithFrame:(CGRect)frame style:(UIActivityIndicatorViewStyle)style color:(nullable id)color backgroundColor:(nullable id)backgroundColor startAnimate:(BOOL)startAnimate;


#pragma mark --- 自由控制中间动画部分的大小
/**
 UIActivityIndicatorView
 frame + hudSize + hudColor + startAnimate
 
 @param frame 整个ActivityIndicatorView的大小
 @param hudSize 中间动画部分的大小
 @param hudColor 中间动画部分颜色 UIColor或者NSString或者NSNumber格式
 @param startAnimate 是否开始动画
 */
+ (UIActivityIndicatorView *)activityIndicatorViewWithFrame:(CGRect)frame hudSize:(CGSize)hudSize hudColor:(nullable id)hudColor startAnimate:(BOOL)startAnimate;


/**
 UIActivityIndicatorView
 frame + hudSize + hudColor + backgroundColor + startAnimate
 
 @param frame 整个ActivityIndicatorView的大小
 @param hudSize 中间动画部分的大小
 @param hudColor 中间动画部分颜色 UIColor或者NSString或者NSNumber格式
 @param backgroundColor 背景色 UIColor或者NSString或者NSNumber格式
 @param startAnimate 是否开始动画
 */
+ (UIActivityIndicatorView *)activityIndicatorViewWithFrame:(CGRect)frame hudSize:(CGSize)hudSize hudColor:(nullable id)hudColor backgroundColor:(nullable id)backgroundColor startAnimate:(BOOL)startAnimate;

@end

NS_ASSUME_NONNULL_END
