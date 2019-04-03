//
//  UISwitch+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/14.
//

#import "UISwitch+Fragrans.h"
#import "UIColor+Fragrans.h"
@implementation UISwitch (Fragrans)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
/**
 create switch by target + action
 
 */
- (UISwitch *)initWithTarget:(id)target action:(SEL)action {
    return [UISwitch switchWithThumbTintColor:nil onTintColor:nil tintColor:nil target:target action:action];
}

/**
 create switch by target + action
 
 */
+ (UISwitch *)switchWithTarget:(id)target action:(SEL)action {
    return [UISwitch switchWithThumbTintColor:nil onTintColor:nil tintColor:nil target:target action:action];
}

/**
 create switch by thumbTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithThumbTintColor:(id)thumbTintColor {
    return [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:nil tintColor:nil target:nil action:nil];
}

/**
 create switch by thumbTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithThumbTintColor:(id)thumbTintColor {
    return [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:nil tintColor:nil target:nil action:nil];
}

/**
 create switch by thumbTintColor + target + action
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithThumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:nil tintColor:nil target:target action:action];
}

/**
 create switch by thumbTintColor + target + action
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithThumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:nil tintColor:nil target:target action:action];
}

/**
 create switch by thumbTintColor + onTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor {
    return [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:nil target:nil action:nil];
}

/**
 create switch by thumbTintColor + onTintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor {
    return [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:nil target:nil action:nil];
}

/**
 create switch by thumbTintColor + onTintColor + target + action
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:nil target:target action:action];
}

/**
 create switch by thumbTintColor + onTintColor + target + action
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:nil target:target action:action];
}

/**
 create switch by thumbTintColor + onTintColor + tintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor {
    return [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:tintColor target:nil action:nil];
}

/**
 create switch by thumbTintColor + onTintColor + tintColor
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor {
    return [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:tintColor target:nil action:nil];
}

/**
 create switch by thumbTintColor + onTintColor + tintColor + target + action
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithThumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:tintColor target:target action:action];
}

/**
 create switch by thumbTintColor + onTintColor + tintColor + target + action
 
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithThumbTintColor:(nullable id)thumbTintColor onTintColor:(nullable id)onTintColor tintColor:(nullable id)tintColor target:(nullable id)target action:(nullable SEL)action {
    UISwitch   *swit = [[UISwitch alloc] init];
    swit.thumbTintColor = [UIColor safeColor:thumbTintColor];
    swit.onTintColor = [UIColor safeColor:onTintColor];
    swit.tintColor = [UIColor safeColor:tintColor];
    if (target && action) {
        [swit addTarget:target action:action forControlEvents:UIControlEventValueChanged];
    }
    return swit;
}

/**
 create switch by point
 
 @param point 起始点坐标
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point {
    return [UISwitch switchWithStarPoint:point thumbTintColor:nil onTintColor:nil tintColor:nil target:nil action:nil];
}

/**
 create switch by point
 
 @param point 起始点坐标
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point {
    return [UISwitch switchWithStarPoint:point thumbTintColor:nil onTintColor:nil tintColor:nil target:nil action:nil];
}

/**
 create switch by point + target + action
 
 @param point 起始点坐标
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point target:(id)target action:(SEL)action {
    return [UISwitch switchWithStarPoint:point thumbTintColor:nil onTintColor:nil tintColor:nil target:target action:action];
}

/**
 create switch by point + target + action
 
 @param point 起始点坐标
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point target:(id)target action:(SEL)action {
    return [UISwitch switchWithStarPoint:point thumbTintColor:nil onTintColor:nil tintColor:nil target:target action:action];
}

/**
 create switch by point + thumbTintColor
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor {
    return [UISwitch switchWithStarPoint:point thumbTintColor:thumbTintColor onTintColor:nil tintColor:nil target:nil action:nil];
}

/**
 create switch by point + thumbTintColor
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor {
    return [UISwitch switchWithStarPoint:point thumbTintColor:thumbTintColor onTintColor:nil tintColor:nil target:nil action:nil];
}

/**
 create switch by point + thumbTintColor + target + action
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithStarPoint:point thumbTintColor:thumbTintColor onTintColor:nil tintColor:nil target:target action:action];
}

/**
 create switch by point + thumbTintColor + target + action
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithStarPoint:point thumbTintColor:thumbTintColor onTintColor:nil tintColor:nil target:target action:action];
}

/**
 create switch by point + thumbTintColor + onTintColor
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor {
    return [UISwitch switchWithStarPoint:point thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:nil target:nil action:nil];
}

/**
 create switch by point + thumbTintColor + onTintColor
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor {
    return [UISwitch switchWithStarPoint:point thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:nil target:nil action:nil];
}

/**
 create switch by point + thumbTintColor + onTintColor + target + action
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithStarPoint:point thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:nil target:target action:action];
}

/**
 create switch by point + thumbTintColor + onTintColor + target + action
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithStarPoint:point thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:nil target:target action:action];
}

/**
 create switch by point + thumbTintColor + onTintColor + tintColor
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor {
    return [UISwitch switchWithStarPoint:point thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:tintColor target:nil action:nil];
}

/**
 create switch by point + thumbTintColor + onTintColor + tintColor
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor {
    return [UISwitch switchWithStarPoint:point thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:tintColor target:nil action:nil];
}

/**
 create switch by point + thumbTintColor + onTintColor + tintColor + target + action
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithStarPoint:(CGPoint)point thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithStarPoint:point thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:tintColor target:target action:action];
}

/**
 create switch by point + thumbTintColor + onTintColor + tintColor + target + action
 
 @param point 起始点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithStarPoint:(CGPoint)point thumbTintColor:(nullable id)thumbTintColor onTintColor:(nullable id)onTintColor tintColor:(nullable id)tintColor target:(nullable id)target action:(nullable SEL)action {
    UISwitch   *swit = [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:tintColor target:target action:action];
    swit.frame = CGRectMake(point.x, point.y, 49, 31);
    return swit;
}

/**
 create switch by center
 
 @param center 中心点坐标
 */
- (UISwitch *)initWithCenter:(CGPoint)center {
    return [UISwitch switchWithCenter:center thumbTintColor:nil onTintColor:nil tintColor:nil target:nil action:nil];
}

/**
 create switch by center
 
 @param center 中心点坐标
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center {
    return [UISwitch switchWithCenter:center thumbTintColor:nil onTintColor:nil tintColor:nil target:nil action:nil];
}

/**
 create switch by center + target + action
 
 @param center 中心点坐标
 */
- (UISwitch *)initWithCenter:(CGPoint)center target:(id)target action:(SEL)action {
    return [UISwitch switchWithCenter:center thumbTintColor:nil onTintColor:nil tintColor:nil target:target action:action];
}

/**
 create switch by center + target + action
 
 @param center 中心点坐标
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center target:(id)target action:(SEL)action {
    return [UISwitch switchWithCenter:center thumbTintColor:nil onTintColor:nil tintColor:nil target:target action:action];
}

/**
 create switch by center + thumbTintColor
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor {
    return [UISwitch switchWithCenter:center thumbTintColor:thumbTintColor onTintColor:nil tintColor:nil target:nil action:nil];
}

/**
 create switch by center + thumbTintColor
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor {
    return [UISwitch switchWithCenter:center thumbTintColor:thumbTintColor onTintColor:nil tintColor:nil target:nil action:nil];
}

/**
 create switch by center + thumbTintColor + target + action
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithCenter:center thumbTintColor:thumbTintColor onTintColor:nil tintColor:nil target:target action:action];
}

/**
 create switch by center + thumbTintColor + target + action
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithCenter:center thumbTintColor:thumbTintColor onTintColor:nil tintColor:nil target:target action:action];
}

/**
 create switch by center + thumbTintColor + onTintColor
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor {
    return [UISwitch switchWithCenter:center thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:nil target:nil action:nil];
}

/**
 create switch by center + thumbTintColor + onTintColor
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor {
    return [UISwitch switchWithCenter:center thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:nil target:nil action:nil];
}

/**
 create switch by center + thumbTintColor + onTintColor + target + action
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithCenter:center thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:nil target:target action:action];
}

/**
 create switch by center + thumbTintColor + onTintColor + target + action
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithCenter:center thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:nil target:target action:action];
}

/**
 create switch by center + thumbTintColor + onTintColor + tintColor
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor {
    return [UISwitch switchWithCenter:center thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:tintColor target:nil action:nil];
}

/**
 create switch by center + thumbTintColor + onTintColor + tintColor
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor {
    return [UISwitch switchWithCenter:center thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:tintColor target:nil action:nil];
}

/**
 create switch by center + thumbTintColor + onTintColor + tintColor + target + action
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
- (UISwitch *)initWithCenter:(CGPoint)center thumbTintColor:(id)thumbTintColor onTintColor:(id)onTintColor tintColor:(id)tintColor target:(id)target action:(SEL)action {
    return [UISwitch switchWithCenter:center thumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:tintColor target:target action:action];
}

/**
 create switch by center + thumbTintColor + onTintColor + tintColor + target + action
 
 @param center 中心点坐标
 @param thumbTintColor  UIColor或者NSString或者NSNumber格式
 @param onTintColor  UIColor或者NSString或者NSNumber格式
 @param tintColor  UIColor或者NSString或者NSNumber格式
 */
+ (UISwitch *)switchWithCenter:(CGPoint)center thumbTintColor:(nullable id)thumbTintColor onTintColor:(nullable id)onTintColor tintColor:(nullable id)tintColor target:(nullable id)target action:(nullable SEL)action {
    UISwitch   *swit = [UISwitch switchWithThumbTintColor:thumbTintColor onTintColor:onTintColor tintColor:tintColor target:target action:action];
    swit.center = center;
    swit.bounds = CGRectMake(0, 0, 49, 31);
    return swit;
}

#pragma clang diagnostic pop
@end
