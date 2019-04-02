//
//  UIColor+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/1/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Fragrans)

/**
 安全样式
 
 @param color UIColor或者NSString格式
 */
+ (UIColor *)safeColor:(id)color;

/**
 安全样式
 
 @param color UIColor或者NSString格式
 @param baseColor UIColor或者NSString格式
 @return 当color为UIColor或者NSString格式时返回color，不是时返回baseColor的颜色;
 */
+ (UIColor *)safeColor:(id)color baseColor:(id)baseColor;

/**
 通过hex String 创建color对象
 
 @param hexString hex String
 @return color对象
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;

/**
 通过hex String 创建一个指定透明度Color对象
 
 @param hexString hex String
 @param alpha 透明度
 @return color对象
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

/**
 随机颜色
 
 @return 随机色
 */
+ (UIColor *)randomColor;

/**
 渐变颜色
 
 @param fromColor 开始颜色 UIColor或者NSString或者NSNumber格式
 @param toColor 结束颜色 UIColor或者NSString或者NSNumber格式
 @param height 渐变高度
 @return 渐变颜色
 */
+ (UIColor *)gradientForTopToBottomFromColor:(id)fromColor toColor:(id)toColor height:(NSInteger)height;

/**
 渐变颜色 (多种颜色)
 
 @param colorsArray UIColor或者NSString或者NSNumber格式的集合
 @param height 渐变高度
 @return 渐变颜色
 */
+ (UIColor *)gradientForTopToBottomWithColors:(NSArray <id>*)colorsArray height:(NSInteger)height;

/**
 渐变颜色
 
 @param fromColor 开始颜色 UIColor或者NSString或者NSNumber格式
 @param toColor 结束颜色 UIColor或者NSString或者NSNumber格式
 @param width 渐变宽度
 @return 渐变颜色
 */
+ (UIColor *)gradientForLeftToRightFromColor:(id)fromColor toColor:(id)toColor width:(NSInteger)width;

/**
 渐变颜色（多种颜色）
 
 @param colorsArray UIColor或者NSString或者NSNumber格式的集合
 @param width 渐变宽度
 @return 渐变颜色
 */
+ (UIColor *)gradientForLeftToRightWithColors:(NSArray <id>*)colorsArray width:(NSInteger)width;

@end

NS_ASSUME_NONNULL_END
