//
//  UISwitch+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/3/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UISwitch (Fragrans)

/**
 create switch by target + action
 
 */
- (UISwitch *)initWithTarget:(id)target action:(SEL)action;

/**
 create switch by target + action
 
 */
+ (UISwitch *)switchWithTarget:(id)target action:(SEL)action;

/**
 create switch by thumbTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithThumbTintColor:(id)thumbTintColor;

/**
 create switch by thumbTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithThumbTintColor:(id)thumbTintColor;

/**
 create switch by thumbTintColor + target + action
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithThumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action;

/**
 create switch by thumbTintColor + target + action
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithThumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action;

/**
 create switch by thumbTintColor + onTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor;

/**
 create switch by thumbTintColor + onTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor;

/**
 create switch by thumbTintColor + onTintColor + target + action
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor target:(id)target action:(SEL)action;

/**
 create switch by thumbTintColor + onTintColor + target + action
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor target:(id)target action:(SEL)action;

/**
 create switch by thumbTintColor + onTintColor + tintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor;

/**
 create switch by thumbTintColor + onTintColor + tintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor;

/**
 create switch by thumbTintColor + onTintColor + tintColor + target + action
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor target:(id)target action:(SEL)action;

/**
 create switch by thumbTintColor + onTintColor + tintColor + target + action
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithThumbTintColor:(nullable id)thumbTintColor onTintColor:(nullable id)onTintColor tintColor:(nullable id)tintColor target:(nullable id)target action:(nullable SEL)action;

/**
 create switch by point
 
 @param point 起始点坐标
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point;

/**
 create switch by point
 
 @param point 起始点坐标
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point;

/**
 create switch by point + target + action
 
 @param point 起始点坐标
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point target:(id)target action:(SEL)action;

/**
 create switch by point + target + action
 
 @param point 起始点坐标
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point target:(id)target action:(SEL)action;

/**
 create switch by point + thumbTintColor
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor;

/**
 create switch by point + thumbTintColor
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor;

/**
 create switch by point + thumbTintColor + target + action
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action;

/**
 create switch by point + thumbTintColor + target + action
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action;

/**
 create switch by point + thumbTintColor + onTintColor
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor;

/**
 create switch by point + thumbTintColor + onTintColor
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor;

/**
 create switch by point + thumbTintColor + onTintColor + target + action
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor target:(id)target action:(SEL)action;

/**
 create switch by point + thumbTintColor + onTintColor + target + action
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor target:(id)target action:(SEL)action;

/**
 create switch by point + thumbTintColor + onTintColor + tintColor
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor;

/**
 create switch by point + thumbTintColor + onTintColor + tintColor
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor;

/**
 create switch by point + thumbTintColor + onTintColor + tintColor + target + action
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor target:(id)target action:(SEL)action;

/**
 create switch by point + thumbTintColor + onTintColor + tintColor + target + action
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point thumbTintColor:(nullable id)thumbTintColor onTintColor:(nullable id)onTintColor tintColor:(nullable id)tintColor target:(nullable id)target action:(nullable SEL)action;

/**
 create switch by center
 
 @param center 中心点坐标
 */
- (UISwitch *)initWithCenter:(CGPoint)center;

/**
 create switch by center
 
 @param center 中心点坐标
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center;

/**
 create switch by center + target + action
 
 @param center 中心点坐标
 */
- (UISwitch *)initWithCenter:(CGPoint)center target:(id)target action:(SEL)action;

/**
 create switch by center + target + action
 
 @param center 中心点坐标
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center target:(id)target action:(SEL)action;

/**
 create switch by center + thumbTintColor
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor;

/**
 create switch by center + thumbTintColor
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor;

/**
 create switch by center + thumbTintColor + target + action
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action;

/**
 create switch by center + thumbTintColor + target + action
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action;

/**
 create switch by center + thumbTintColor + onTintColor
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor;

/**
 create switch by center + thumbTintColor + onTintColor
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor;

/**
 create switch by center + thumbTintColor + onTintColor + target + action
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor target:(id)target action:(SEL)action;

/**
 create switch by center + thumbTintColor + onTintColor + target + action
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor target:(id)target action:(SEL)action;

/**
 create switch by center + thumbTintColor + onTintColor + tintColor
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor;

/**
 create switch by center + thumbTintColor + onTintColor + tintColor
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor;

/**
 create switch by center + thumbTintColor + onTintColor + tintColor + target + action
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor target:(id)target action:(SEL)action;

/**
 create switch by center + thumbTintColor + onTintColor + tintColor + target + action
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center thumbTintColor:(nullable id)thumbTintColor onTintColor:(nullable id)onTintColor tintColor:(nullable id)tintColor target:(nullable id)target action:(nullable SEL)action;


@end

NS_ASSUME_NONNULL_END
