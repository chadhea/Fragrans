//
//  CABasicAnimation+Fragrans.h
//  Fragrans
//


#import <QuartzCore/QuartzCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface CABasicAnimation (Fragrans)

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue;

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param repeatCount h动画执行次数
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount;

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param duration 动画执行1次的时间
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration;

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration;

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue autoreverses:(BOOL)autoreverses;

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param repeatCount 动画执行次数
 @param autoreverses 是否执行逆反
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount autoreverses:(BOOL)autoreverses;

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration autoreverses:(BOOL)autoreverses;

/**
 透明度渐变动画
 
 @param fromValue 从透明度多少(0 - 1)
 @param toValue 到透明度多少(0 - 1)
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 @return 返回动画
 */
+ (CABasicAnimation *)alphaWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration autoreverses:(BOOL)autoreverses;


/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue;

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 @param repeatCount 动画执行次数
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount;

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 @param duration 动画执行1次的时间
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration;

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration;

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue autoreverses:(BOOL)autoreverses;

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 @param repeatCount 动画执行次数
 @param autoreverses 是否执行逆反
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount autoreverses:(BOOL)autoreverses;

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大（几倍）
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration autoreverses:(BOOL)autoreverses;

/**
 缩放动画
 
 @param fromValue 从多大(几倍)
 @param toValue 缩放到多大(几倍)
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 @return 返回动画
 */
+ (CABasicAnimation *)transformWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration autoreverses:(BOOL)autoreverses;

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue;

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount;

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param duration 动画执行1次的时间
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration;

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration;

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue autoreverses:(BOOL)autoreverses;

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param autoreverses 是否执行逆反
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount autoreverses:(BOOL)autoreverses;

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 动画执行次数默认1次

 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration autoreverses:(BOOL)autoreverses;

/**
 平面旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 @return 返回动画
 */
+ (CABasicAnimation *)planeRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration autoreverses:(BOOL)autoreverses;

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue;

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount;

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param duration 动画执行1次的时间
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration;

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration;

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue autoreverses:(BOOL)autoreverses;

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param autoreverses 是否执行逆反
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount autoreverses:(BOOL)autoreverses;

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration autoreverses:(BOOL)autoreverses;

/**
 X轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 @return 返回动画
 */
+ (CABasicAnimation *)xAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration autoreverses:(BOOL)autoreverses;

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue;

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount;

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param duration 动画执行1次的时间
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration;

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration;

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue autoreverses:(BOOL)autoreverses;

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param autoreverses 是否执行逆反
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount autoreverses:(BOOL)autoreverses;

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue duration:(float)duration autoreverses:(BOOL)autoreverses;

/**
 Y轴旋转动画
 
 @param fromValue 开始角度
 @param toValue 结束角度
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 @return 返回动画
 */
+ (CABasicAnimation *)yAxisRotateWithFromValue:(float)fromValue toValue:(float)toValue repeatCount:(float)repeatCount duration:(float)duration autoreverses:(BOOL)autoreverses;


/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue;

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param repeatCount 动画执行次数
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue repeatCount:(float)repeatCount;

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param duration 动画执行1次的时间
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue duration:(float)duration;

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue repeatCount:(float)repeatCount duration:(float)duration;

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue autoreverses:(BOOL)autoreverses;

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param repeatCount 动画执行次数
 @param autoreverses 是否执行逆反
 动画执行1次的时间默认1秒
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue repeatCount:(float)repeatCount autoreverses:(BOOL)autoreverses;

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param duration 动画执行1次时间
 @param autoreverses 是否执行逆反
 动画执行次数默认1次
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue duration:(float)duration autoreverses:(BOOL)autoreverses;

/**
 位移动画
 
 @param fromValue 起始点
 @param toValue 终点
 @param repeatCount 动画执行次数
 @param duration 动画执行1次的时间
 @param autoreverses 是否执行逆反
 @return 返回动画
 */
+ (CABasicAnimation *)translationWithFromValue:(CGPoint)fromValue toValue:(CGPoint)toValue repeatCount:(float)repeatCount duration:(float)duration autoreverses:(BOOL)autoreverses;

@end

NS_ASSUME_NONNULL_END
