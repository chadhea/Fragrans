//
//  CABasicAnimation+Fragrans.m
//  Fragrans
//


#import "CABasicAnimation+Fragrans.h"
#import <UIKit/UIKit.h>
@implementation CABasicAnimation (Fragrans)

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue {
    return [self alphaWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:1.0f autoreverses:NO];
}

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param repeatCount h动画执行次数
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount {
    return [self alphaWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:1.0f autoreverses:NO];
}

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param duration 动画执行1次的时间
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration {
    return [self alphaWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:duration autoreverses:NO];
}

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration {
    return [self alphaWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:duration autoreverses:NO];
}

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue autoreverses:(BOOL)autoreverses {
    return [self alphaWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:1.0f autoreverses:autoreverses];
}

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param repeatCount 动画执行次数
 @param autoreverses 是否执行逆反
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount autoreverses:(BOOL)autoreverses {
    return [self alphaWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:1.0f autoreverses:autoreverses];
}

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration autoreverses:(BOOL)autoreverses {
    return [self alphaWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:duration autoreverses:autoreverses];
}

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration autoreverses:(BOOL)autoreverses {
    CABasicAnimation   *alphaAnimatin = [CABasicAnimation animationWithKeyPath:@"opacity"];
    alphaAnimatin.fromValue = @(fromValue);
    alphaAnimatin.toValue = @(toValue);
    alphaAnimatin.autoreverses = autoreverses;
    alphaAnimatin.repeatCount = repeatCount;
    alphaAnimatin.duration = duration;
    return alphaAnimatin;
}

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue {
    return [self transformWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:1.0f autoreverses:NO];
}

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 @param repeatCount 动画执行次数
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount {
    return [self transformWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:1.0f autoreverses:NO];
}

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 @param duration 动画执行1次的时间
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration {
    return [self transformWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:duration autoreverses:NO];
}

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration {
    return [self transformWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:duration autoreverses:NO];
}

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue autoreverses:(BOOL)autoreverses {
    return [self transformWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:1.0f autoreverses:autoreverses];
}

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 @param repeatCount 动画执行次数
 @param autoreverses 是否执行逆反
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount autoreverses:(BOOL)autoreverses {
    return [self transformWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:1.0f autoreverses:autoreverses];
}

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration autoreverses:(BOOL)autoreverses {
    return [self transformWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:duration autoreverses:autoreverses];
}

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大(几倍)
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration autoreverses:(BOOL)autoreverses {
    CABasicAnimation   *transformAnimation = [CABasicAnimation animationWithKeyPath:@"transform"];
    transformAnimation.fromValue = [NSValue valueWithCATransform3D:CATransform3DScale(CATransform3DIdentity, fromValue, fromValue, 0.0)];
    transformAnimation.toValue = [NSValue valueWithCATransform3D:CATransform3DScale(CATransform3DIdentity, toValue, toValue, 0.0)];
    transformAnimation.autoreverses = autoreverses;
    transformAnimation.repeatCount = repeatCount;
    transformAnimation.duration = duration;
    return transformAnimation;
}

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue {
    return [self planeRotateWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:1.0f autoreverses:NO];
}

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount {
    return [self planeRotateWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:1.0f autoreverses:NO];
}

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param duration 动画执行1次的时间
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration {
    return [self planeRotateWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:duration autoreverses:NO];
}

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration {
    return [self planeRotateWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:duration autoreverses:NO];
}

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue autoreverses:(BOOL)autoreverses {
    return [self planeRotateWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:1.0f autoreverses:autoreverses];
}

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param autoreverses 是否执行逆反
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount autoreverses:(BOOL)autoreverses {
    return [self planeRotateWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:1.0f autoreverses:autoreverses];
}

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration autoreverses:(BOOL)autoreverses {
    return [self planeRotateWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:duration autoreverses:autoreverses];
}

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration autoreverses:(BOOL)autoreverses {
    CABasicAnimation   *rotateAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotateAnimation.duration = duration;
    rotateAnimation.repeatCount = repeatCount;
    rotateAnimation.autoreverses = autoreverses;
    rotateAnimation.fromValue = [NSNumber numberWithFloat:fromValue];
    rotateAnimation.toValue = [NSNumber numberWithFloat:toValue];
    return rotateAnimation;
}

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue {
    return [self xAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:1.0f autoreverses:NO];
}

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount {
    return [self xAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:1.0f autoreverses:NO];
}

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param duration 动画执行1次的时间
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration {
    return [self xAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:duration autoreverses:NO];
}

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration {
    return [self xAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:duration autoreverses:NO];
}

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue autoreverses:(BOOL)autoreverses {
    return [self xAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:1.0f autoreverses:autoreverses];
}

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param autoreverses 是否执行逆反
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount autoreverses:(BOOL)autoreverses {
    return [self xAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:1.0f autoreverses:autoreverses];
}

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration autoreverses:(BOOL)autoreverses {
    return [self xAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:duration autoreverses:autoreverses];
}

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration autoreverses:(BOOL)autoreverses {
    CABasicAnimation   *rotateAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
    rotateAnimation.duration = duration;
    rotateAnimation.repeatCount = repeatCount;
    rotateAnimation.autoreverses = autoreverses;
    rotateAnimation.fromValue = [NSNumber numberWithFloat:fromValue];
    rotateAnimation.toValue = [NSNumber numberWithFloat:toValue];
    return rotateAnimation;
}

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue {
    return [self yAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:1.0f autoreverses:NO];
}

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount {
    return [self yAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:1.0f autoreverses:NO];
}

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param duration 动画执行1次的时间
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration {
    return [self yAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:duration autoreverses:NO];
}

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration {
    return [self yAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:duration autoreverses:NO];
}

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue autoreverses:(BOOL)autoreverses {
    return [self yAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:1.0f autoreverses:autoreverses];
}

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param autoreverses 是否执行逆反
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount autoreverses:(BOOL)autoreverses {
    return [self yAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:1.0f autoreverses:autoreverses];
}

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration autoreverses:(BOOL)autoreverses {
    return [self yAxisRotateWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:duration autoreverses:autoreverses];
}

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration autoreverses:(BOOL)autoreverses {
    CABasicAnimation   *rotateAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    rotateAnimation.duration = duration;
    rotateAnimation.repeatCount = repeatCount;
    rotateAnimation.autoreverses = autoreverses;
    rotateAnimation.fromValue = [NSNumber numberWithFloat:fromValue];
    rotateAnimation.toValue = [NSNumber numberWithFloat:toValue];
    return rotateAnimation;
}

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue {
    return [self translationWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:1.0f autoreverses:NO];
}

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param repeatCount 动画执行次数
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue repeatCount:(float)repeatCount {
    return [self translationWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:1.0f autoreverses:NO];
}

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param duration 动画执行1次的时间
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue duration:(float)duration {
    return [self translationWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:duration autoreverses:NO];
}

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue repeatCount:(float)repeatCount duration:(float)duration {
    return [self translationWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:duration autoreverses:NO];
}

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue autoreverses:(BOOL)autoreverses {
    return [self translationWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:1.0f autoreverses:autoreverses];
}

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param repeatCount 动画执行次数
 @param autoreverses 是否执行逆反
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue repeatCount:(float)repeatCount autoreverses:(BOOL)autoreverses {
    return [self translationWithFromValue:fromValue toValue:toValue repeatCount:repeatCount duration:1.0f autoreverses:autoreverses];
}

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param duration 动画执行1次时间
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue duration:(float)duration autoreverses:(BOOL)autoreverses {
    return [self translationWithFromValue:fromValue toValue:toValue repeatCount:1.0f duration:duration autoreverses:autoreverses];
}

/**
 位移动画
 
 @param fromValue 起始点(已中心点为坐标)
 @param toValue 终点(已中心点为坐标)
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue repeatCount:(float)repeatCount duration:(float)duration autoreverses:(BOOL)autoreverses {
    CABasicAnimation   *translationAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    translationAnimation.duration = duration;
    translationAnimation.repeatCount = repeatCount;
    translationAnimation.autoreverses = autoreverses;
    translationAnimation.fromValue = [NSValue valueWithCGPoint:fromValue];
    translationAnimation.toValue = [NSValue valueWithCGPoint:toValue];
    return translationAnimation;
}

@end
