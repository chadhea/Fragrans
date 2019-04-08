//
//  UIView+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/2/15.
//

#import <UIKit/UIKit.h>

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

#pragma mark --- 绘图
/**
 住：
 一下方法需要在
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 方法里面请求
*/

/**
 划线
 
 @param fromPoint 起始点
 @param toPoint 终点
 默认线宽：1.0
 默认线颜色black
 */
+ (CGContextRef)drawLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint;

/**
 划线
 
 @param fromPoint 起始点
 @param toPoint 终点
 @param lineWidth 线宽
 默认线颜色black
 */
+ (CGContextRef)drawLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint lineWidth:(CGFloat)lineWidth;

/**
 划线
 
 @param fromPoint 起始点
 @param toPoint 终点
 @param lineWidth 线宽
 @param lineColor 线颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint lineWidth:(CGFloat)lineWidth lineColor:(id)lineColor;

/**
 划线
 
 @param pointArray 所划线的点的集合
 @param lineWidth 线宽
 @param strokeColor 线颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawLinePointArray:(NSArray <NSValue *>*)pointArray lineWidth:(CGFloat)lineWidth strokeColor:(id)strokeColor;

/**
 划线
 
 @param pointArray 所划线的点的集合
 @param lineWidth 线宽
 @param fillColor 填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawLinePointArray:(NSArray <NSValue *>*)pointArray lineWidth:(CGFloat)lineWidth fillColor:(id)fillColor;

/**
 划线
 
 @param pointArray 所划线的点的集合
 @param lineWidth 线宽
 @param strokeColor 线颜色 UIColor或者NSString格式
 @param fillColor 填充颜色 UIColor或者NSString格式
 */
+ (void)drawLinePointArray:(NSArray <NSValue *>*)pointArray lineWidth:(CGFloat)lineWidth strokeColor:(nullable id)strokeColor fillColor:(nullable id)fillColor;

/**
 画矩形
 
 线宽默认为1
 */
+ (CGContextRef)drawRect:(CGRect)rect;

/**
 画矩形
 
 @param lineWidth 线宽
 */
+ (CGContextRef)drawRect:(CGRect)rect lineWidth:(CGFloat)lineWidth;

/**
 画矩形
 
 @param lineWidth 线宽
 @param strokeColor 线颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawRect:(CGRect)rect lineWidth:(CGFloat)lineWidth strokeColor:(id)strokeColor;

/**
 画矩形
 
 @param lineWidth 线宽
 @param fillColor 填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawRect:(CGRect)rect lineWidth:(CGFloat)lineWidth fillColor:(id)fillColor;

/**
 画矩形
 
 @param lineWidth 线宽
 @param strokeColor 线颜色 UIColor或者NSString格式
 @param fillColor 填充颜色 UIColor或者NSString格式
 */
+ (void)drawRect:(CGRect)rect lineWidth:(CGFloat)lineWidth strokeColor:(id)strokeColor fillColor:(id)fillColor;

/**
 画曲线
 
 @param circleCenter 曲线圆中心点
 @param radius 曲线圆半径
 @param startAngle 曲线圆开始角度
 @param endAngle 曲线圆结束角度
 曲线圆宽度默认为1
 */
+ (CGContextRef)drawCurveCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle;

/**
 画曲线
 
 @param circleCenter 曲线圆中心点
 @param radius 曲线圆半径
 @param startAngle 曲线圆开始角度
 @param endAngle 曲线圆结束角度
 @param lineWidth 曲线圆宽度
 */
+ (CGContextRef)drawCurveCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle lineWidth:(CGFloat)lineWidth;

/**
 画曲线
 
 @param circleCenter 曲线圆中心点
 @param radius 曲线圆半径
 @param startAngle 曲线圆开始角度
 @param endAngle 曲线圆结束角度
 @param lineWidth 曲线圆宽度
 @param lineColor 曲线圆线颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCurveCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle lineWidth:(CGFloat)lineWidth lineColor:(id)lineColor;

/**
 画曲线
 
 @param circleCenter 曲线圆中心点
 @param radius 曲线圆半径
 @param startAngle 曲线圆开始角度
 @param endAngle 曲线圆结束角度
 @param clockwise 0顺时针  1逆时针
 @param lineWidth 曲线圆宽度
 @param lineColor 曲线圆线颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCurveCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(int)clockwise lineWidth:(CGFloat)lineWidth lineColor:(id)lineColor;

/**
 画曲线
 
 @param circleCenter 曲线圆中心点
 @param radius 曲线圆半径
 @param startAngle 曲线圆开始角度
 @param endAngle 曲线圆结束角度
 @param clockwise 0顺时针  1逆时针
 @param lineWidth 曲线圆宽度
 @param lineColor 曲线圆线颜色 UIColor或者NSString格式
 @param round 是否圆角
 */
+ (CGContextRef)drawCurveCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(int)clockwise lineWidth:(CGFloat)lineWidth lineColor:(id)lineColor round:(BOOL)round;

/**
 画曲线(三点和半径画圆)
 
 @param startPoint 曲线圆开始点
 @param focusPoint 曲线圆中间点
 @param endPoint 曲线圆结束点
 @param radius 曲线圆半径
 */
+ (CGContextRef)drawCurveWithStartPoint:(CGPoint)startPoint focusPoint:(CGPoint)focusPoint endPoint:(CGPoint)endPoint radius:(CGFloat)radius;

/**
 画曲线(三点和半径画圆)
 
 @param startPoint 曲线圆开始点
 @param focusPoint 曲线圆中间点
 @param endPoint 曲线圆结束点
 @param radius 曲线圆半径
 @param lineWidth 线宽
 */
+ (CGContextRef)drawCurveWithStartPoint:(CGPoint)startPoint focusPoint:(CGPoint)focusPoint endPoint:(CGPoint)endPoint radius:(CGFloat)radius lineWidth:(CGFloat)lineWidth;

/**
 画曲线(三点和半径画圆)
 
 @param startPoint 曲线圆开始点
 @param focusPoint 曲线圆中间点
 @param endPoint 曲线圆结束点
 @param radius 曲线圆半径
 @param lineWidth 线宽
 @param lineColor 线颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCurveWithStartPoint:(CGPoint)startPoint focusPoint:(CGPoint)focusPoint endPoint:(CGPoint)endPoint radius:(CGFloat)radius lineWidth:(CGFloat)lineWidth lineColor:(id)lineColor;

/**
 画曲线(三点和半径画圆)
 
 @param startPoint 曲线圆开始点
 @param focusPoint 曲线圆中间点
 @param endPoint 曲线圆结束点
 @param radius 曲线圆半径
 @param lineWidth 线宽
 @param lineColor 线颜色 UIColor或者NSString格式
 @param round 是否圆角
 */
+ (CGContextRef)drawCurveWithStartPoint:(CGPoint)startPoint focusPoint:(CGPoint)focusPoint endPoint:(CGPoint)endPoint radius:(CGFloat)radius lineWidth:(CGFloat)lineWidth lineColor:(id)lineColor round:(BOOL)round;

/**
 画圆
 */
+ (CGContextRef)drawCircleFrame:(CGRect)frame;

/**
 画圆
 
 @param color 双填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleFrame:(CGRect)frame color:(id)color;

/**
 画圆
 */
+ (CGContextRef)drawCircleCenter:(CGPoint)center radius:(CGFloat)radius;

/**
 画圆
 
 @param color 双填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleCenter:(CGPoint)center radius:(CGFloat)radius color:(id)color;

/**
 画圆
 
 @param strokeColor 外填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleFrame:(CGRect)frame strokeColor:(id)strokeColor;

/**
 画圆
 
 @param lineWidth 线宽
 @param strokeColor 外填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleFrame:(CGRect)frame lineWidth:(CGFloat)lineWidth strokeColor:(id)strokeColor;

/**
 画圆
 
 @param strokeColor 外填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleCenter:(CGPoint)center radius:(CGFloat)radius strokeColor:(id)strokeColor;

/**
 画圆
 
 @param strokeColor 外填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleCenter:(CGPoint)center radius:(CGFloat)radius lineWidth:(CGFloat)width strokeColor:(id)strokeColor;

/**
 画圆
 
 @param fillColor 内填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleFrame:(CGRect)frame fillColor:(id)fillColor;

/**
 画圆
 
 @param fillColor 内填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleCenter:(CGPoint)center radius:(CGFloat)radius fillColor:(id)fillColor;

/**
 画饼
 
 @param circleCenter 圆心点
 @param radius 半径
 @param startAngle 开始角度
 @param endAngle 结束角度
 */
+ (CGContextRef)drawCakeCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle;

/**
 画饼
 
 @param circleCenter 圆心点
 @param radius 半径
 @param startAngle 开始角度
 @param endAngle 结束角度
 @param color 双填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCakeCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle color:(id)color;

/**
 画饼
 
 @param circleCenter 圆心点
 @param radius 半径
 @param startAngle 开始角度
 @param endAngle 结束角度
 @param clockwise 0顺时针  1逆时针
 @param color 双填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCakeCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle  clockwise:(int)clockwise color:(id)color;

/**
 画字符串
 
 @param center 中心点坐标
 @param font 字体大小 UIFont或者NSString或者NSNumber格式
 @param color UIColor或者NSString格式
 */
+ (void)drawString:(NSString *)str center:(CGPoint)center font:(id)font color:(id)color;

/**
 画字符串
 
 @param rect 范围
 @param font 字体大小 UIFont或者NSString或者NSNumber格式
 @param color UIColor或者NSString格式
 */
+ (void)drawString:(NSString *)str rect:(CGRect)rect font:(id)font color:(id)color;



@end

NS_ASSUME_NONNULL_END
