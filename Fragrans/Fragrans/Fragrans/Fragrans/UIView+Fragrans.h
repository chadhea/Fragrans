//
//  UIView+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/2/15.
//

#import <UIKit/UIKit.h>
#import "UIColor+Fragrans.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Fragrans)
@property (nonatomic,assign) CGFloat x;/** 视图中心点横坐标 */
@property (nonatomic,assign) CGFloat y;/** 视图中心点纵坐标 */
@property (nonatomic,assign) CGFloat top;/** 视图的顶边位置 */
@property (nonatomic,assign) CGFloat bottom;/** 视图的底边位置 */
@property (nonatomic,assign) CGFloat left;/** 视图的左边位置 */
@property (nonatomic,assign) CGFloat right;/** 视图的右边位置 */
@property (nonatomic,assign) CGFloat width;/** 视图的高度 */
@property (nonatomic,assign) CGFloat height;/** 视图的高度 */
@property (nonatomic,assign) CGSize size;/** 视图的大小 */
@property (nonatomic,assign) CGFloat centerX;/** 视图的中心x */
@property (nonatomic,assign) CGFloat centerY;/** 视图的中心y */

/**
 create view by tap(点击事件)
 */
- (UIView *)initWithTap:(void(^)(id sender))tapBlock;

/**
 create view by tap(点击事件)
 */
+ (UIView *)viewWithTap:(void(^)(id sender))tapBlock;

/**
 create view by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIView *)initWithBackgroundColor:(id)backgroundColor;

/**
 create view by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIView *)viewWithBackgroundColor:(id)backgroundColor;

/**
 create view by backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIView *)initWithBackgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create view by backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIView *)viewWithBackgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create view by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor;

/**
 create view by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIView *)viewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor;

/**
 create view by frame + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create view by frame + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIView *)viewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create view by center and bounds
 */
- (UIView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create view by center and bounds
 */
+ (UIView *)viewWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create view by center and bounds + tap(点击事件)
 */
- (UIView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds tap:(void(^)(id sender))tapBlock;

/**
 create view by center and bounds + tap(点击事件)
 */
+ (UIView *)viewWithCenter:(CGPoint)center bounds:(CGRect)bounds tap:(void(^)(id sender))tapBlock;

/**
 create view by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor;

/**
 create view by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIView *)viewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor;

/**
 create view by center and bounds + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 create view by center and bounds + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIView *)viewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock;

/**
 添加Tag手势
 
 @param block 手势操作block
 @return tap手势
 */
- (UITapGestureRecognizer *)addTapGestureRecognizerWithActionBlock:(void (^)(id sender))block;

/**
 设置view的圆角角度
 
 @param radius 圆角角度
 */
- (void)layerCornerRadius:(CGFloat)radius;

/**
 设置view的描边颜色及描边宽度

 @param color 描边颜色 UIColor或者NSString格式
 @param width 描边宽度
 */
- (void)layerBorderColor:(id)color width:(CGFloat)width;

/**
 设置view 描边颜色、描边宽度及圆角角度

 @param color  描边颜色 UIColor或者NSString格式
 @param width  描边宽度
 @param radius 圆角角度
 */
- (void)layerBorderColor:(id)color width:(CGFloat)width cornerRadius:(CGFloat)radius;

#pragma mark --- 设置圆角
/**
 设置上边圆角
 */
- (void)setCornerWithTop:(CGFloat)conner;

/**
 设置下边圆角
 */
- (void)setCornerWithBottom:(CGFloat)conner;

/**
 设置左边圆角
 */
- (void)setCornerWithLeft:(CGFloat)conner;

/**
 设置右边圆角
 */
- (void)setCornerWithRight:(CGFloat)conner;

/**
 设置左上圆角
 */
- (void)setCornerWithTopLeft:(CGFloat)conner;

/**
 设置右上圆角
 */
- (void)setCornerWithTopRight:(CGFloat)conner;

/**
 设置左下圆角
 */
- (void)setCornerWithBottomLeft:(CGFloat)conner;

/**
 设置右下圆角
 */
- (void)setCornerWithBottomRight:(CGFloat)conner;


/**
 设置所有圆角
 */
- (void)setCornerWithAll:(CGFloat)conner;





@end

NS_ASSUME_NONNULL_END
