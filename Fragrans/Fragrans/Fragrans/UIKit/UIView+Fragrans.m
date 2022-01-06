//
//  UIView+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/2/15.
//

#import "UIView+Fragrans.h"
#import "UITapGestureRecognizer+Fragrans.h"
#import <objc/runtime.h>
#import "UIColor+Fragrans.h"
#import "UIFont+Fragrans.h"

@implementation UIView (Fragrans)
- (CGFloat)x {
    if (self.frame.origin.x != [objc_getAssociatedObject(self, _cmd) floatValue]) {
        return self.frame.origin.x;
    }
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
    objc_setAssociatedObject(self, @selector(x), @(x), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (CGFloat)y {
    if (self.frame.origin.y != [objc_getAssociatedObject(self, _cmd) floatValue]) {
        return self.frame.origin.y;
    }
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
    objc_setAssociatedObject(self, @selector(y), @(y), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (CGFloat)top {
    if (self.frame.origin.y != [objc_getAssociatedObject(self, _cmd) floatValue]) {
        return self.frame.origin.y;
    }
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
- (void)setTop:(CGFloat)top {
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
    objc_setAssociatedObject(self, @selector(top), @(top), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (CGFloat)bottom {
    if ((self.frame.origin.y + self.frame.size.height) != [objc_getAssociatedObject(self, _cmd) floatValue]) {
        return self.frame.origin.y + self.frame.size.height;
    }
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
    objc_setAssociatedObject(self, @selector(bottom), @(bottom), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (CGFloat)left {
    if (self.frame.origin.x != [objc_getAssociatedObject(self, _cmd) floatValue]) {
        return self.frame.origin.x;
    }
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
- (void)setLeft:(CGFloat)left {
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
    objc_setAssociatedObject(self, @selector(left), @(left), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (CGFloat)right {
    if ((self.frame.origin.x + self.frame.size.width) != [objc_getAssociatedObject(self, _cmd) floatValue]) {
        return self.frame.origin.x + self.frame.size.width;
    }
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
    objc_setAssociatedObject(self, @selector(right), @(right), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (CGFloat)width {
    if (self.frame.size.width != [objc_getAssociatedObject(self, _cmd) floatValue]) {
        return self.frame.size.width;
    }
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
    objc_setAssociatedObject(self, @selector(width), @(width), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (CGFloat)height {
    if (self.frame.size.height != [objc_getAssociatedObject(self, _cmd) floatValue]) {
        return self.frame.size.height;
    }
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
    objc_setAssociatedObject(self, @selector(height), @(height), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (CGSize)size {
    if (self.frame.size.width != [objc_getAssociatedObject(self, _cmd) CGSizeValue].width &&
        self.frame.size.height != [objc_getAssociatedObject(self, _cmd) CGSizeValue].height ) {
        return self.frame.size;
    }
    return self.frame.size;
}
- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size =size;
    self.frame = frame;
    objc_setAssociatedObject(self, @selector(size), @(size), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (CGFloat)centerX {
    if (self.center.x != [objc_getAssociatedObject(self, _cmd) floatValue]) {
        return self.center.x;
    }
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
- (void)setCenterX:(CGFloat)centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
    objc_setAssociatedObject(self, @selector(centerX), @(centerX), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (CGFloat)centerY {
    if (self.center.y != [objc_getAssociatedObject(self, _cmd) floatValue]) {
        return self.center.y;
    }
    return [objc_getAssociatedObject(self, _cmd) floatValue];
}
- (void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
    objc_setAssociatedObject(self, @selector(centerY), @(centerY), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

/**
 create view by tap(点击事件)
 */
- (UIView *)initWithTap:(void(^)(id sender))tapBlock {
    return [UIView viewWithTap:tapBlock];
}

/**
 create view by tap(点击事件)
 */
+ (UIView *)viewWithTap:(void(^)(id sender))tapBlock {
    UIView   *view = [[UIView alloc] init];
    [view addTapGestureRecognizerWithActionBlock:tapBlock];
    return view;
}

/**
 create view by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIView *)initWithBackgroundColor:(id)backgroundColor {
    return [UIView viewWithBackgroundColor:backgroundColor];
}

/**
 create view by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIView *)viewWithBackgroundColor:(id)backgroundColor {
    UIView   *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor safeColor:backgroundColor baseColor:[UIColor whiteColor]];
    return view;
}

/**
 create view by backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIView *)initWithBackgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock {
    return [UIView viewWithBackgroundColor:backgroundColor tap:tapBlock];
}

/**
 create view by backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIView *)viewWithBackgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock {
    UIView   *view = [UIView viewWithBackgroundColor:backgroundColor];
    [view addTapGestureRecognizerWithActionBlock:tapBlock];
    return view;
}

/**
 create view by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor {
    return [UIView viewWithFrame:frame backgroundColor:backgroundColor];
}

/**
 create view by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIView *)viewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor {
    UIView   *view = [UIView viewWithBackgroundColor:backgroundColor];
    view.frame = frame;
    return view;
}

/**
 create view by frame + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock {
    return [UIView viewWithFrame:frame backgroundColor:backgroundColor tap:tapBlock];
}

/**
 create view by frame + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIView *)viewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock {
    UIView   *view = [UIView viewWithFrame:frame backgroundColor:backgroundColor];
    [view addTapGestureRecognizerWithActionBlock:tapBlock];
    return view;
}

/**
 create view by center and bounds
 */
- (UIView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return [UIView viewWithCenter:center bounds:bounds];
}

/**
 create view by center and bounds
 */
+ (UIView *)viewWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    UIView   *view = [[UIView alloc] init];
    view.center = center;
    view.bounds = bounds;
    return view;
}

/**
 create view by center and bounds + tap(点击事件)
 */
- (UIView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds tap:(void(^)(id sender))tapBlock {
    return [UIView viewWithCenter:center bounds:bounds tap:tapBlock];
}

/**
 create view by center and bounds + tap(点击事件)
 */
+ (UIView *)viewWithCenter:(CGPoint)center bounds:(CGRect)bounds tap:(void(^)(id sender))tapBlock {
    UIView   *view = [UIView viewWithCenter:center bounds:bounds];
    [view addTapGestureRecognizerWithActionBlock:tapBlock];
    return view;
}

/**
 create view by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor {
    return [UIView viewWithCenter:center bounds:bounds backgroundColor:backgroundColor];
}

/**
 create view by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIView *)viewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor {
    UIView   *view = [UIView viewWithBackgroundColor:backgroundColor];
    view.center = center;
    view.bounds = bounds;
    return view;
}

/**
 create view by center and bounds + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock {
    return [UIView viewWithCenter:center bounds:bounds backgroundColor:backgroundColor tap:tapBlock];
}

/**
 create view by center and bounds + backgroundColor + tap(点击事件)
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIView *)viewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor tap:(void(^)(id sender))tapBlock {
    UIView   *view = [UIView viewWithCenter:center bounds:bounds backgroundColor:backgroundColor];
    [view addTapGestureRecognizerWithActionBlock:tapBlock];
    return view;
}
#pragma clang diagnostic pop

/**
 添加Tag手势
 
 @param block 手势操作block
 @return tap手势
 */
- (UITapGestureRecognizer *)addTapGestureRecognizerWithActionBlock:(void (^)(id sender))block {
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithActionBlock:block];
    [self addGestureRecognizer:tap];
    return tap;
}

/**
 设置view的圆角角度
 
 @param radius 圆角角度
 */
- (void)layerCornerRadius:(CGFloat)radius {
    if (radius <= 0) {
        return;
    }
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = YES;
}

/**
 设置view的描边颜色及描边宽度
 
 @param color 描边颜色 UIColor或者NSString格式
 @param width 描边宽度
 */
- (void)layerBorderColor:(id)color width:(CGFloat)width {
    self.layer.borderColor = [UIColor safeColor:color].CGColor;
    if (width > 0) {
        self.layer.borderWidth = width;
    }
}

/**
 设置view 描边颜色、描边宽度及圆角角度
 
 @param color  描边颜色 UIColor或者NSString格式
 @param width  描边宽度
 @param radius 圆角角度
 */
- (void)layerBorderColor:(id)color width:(CGFloat)width cornerRadius:(CGFloat)radius {
    [self layerBorderColor:color width:width];
    [self layerCornerRadius:radius];
}

/**
 设置上边圆角
 */
- (void)setCornerWithTop:(CGFloat)conner {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerTopRight)
                                           cornerRadii:CGSizeMake(conner, conner)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

/**
 设置下边圆角
 */
- (void)setCornerWithBottom:(CGFloat)conner {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:(UIRectCornerBottomLeft | UIRectCornerBottomRight)
                                           cornerRadii:CGSizeMake(conner, conner)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

/**
 设置左边圆角
 */
- (void)setCornerWithLeft:(CGFloat)conner {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerBottomLeft)
                                           cornerRadii:CGSizeMake(conner, conner)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

/**
 设置右边圆角
 */
- (void)setCornerWithRight:(CGFloat)conner {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:(UIRectCornerTopRight | UIRectCornerBottomRight)
                                           cornerRadii:CGSizeMake(conner, conner)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

/**
 设置左上圆角
 */
- (void)setCornerWithTopLeft:(CGFloat)conner {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:UIRectCornerTopLeft
                                           cornerRadii:CGSizeMake(conner, conner)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

/**
 设置右上圆角
 */
- (void)setCornerWithTopRight:(CGFloat)conner {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:UIRectCornerTopRight
                                           cornerRadii:CGSizeMake(conner, conner)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

/**
 设置左下圆角
 */
- (void)setCornerWithBottomLeft:(CGFloat)conner{
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:UIRectCornerBottomLeft
                                           cornerRadii:CGSizeMake(conner, conner)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

/**
 设置右下圆角
 */
- (void)setCornerWithBottomRight:(CGFloat)conner {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:UIRectCornerBottomRight
                                           cornerRadii:CGSizeMake(conner, conner)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

/**
 设置所有圆角
 */
- (void)setCornerWithAll:(CGFloat)conner {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                          cornerRadius:conner];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

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
+ (CGContextRef)drawLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint {
    return [self drawLineFromPoint:fromPoint toPoint:toPoint lineWidth:1.0f lineColor:[UIColor blackColor]];
}

/**
 划线
 
 @param fromPoint 起始点
 @param toPoint 终点
 @param lineWidth 线宽
 默认线颜色black
 */
+ (CGContextRef)drawLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint lineWidth:(CGFloat)lineWidth {
    return [self drawLineFromPoint:fromPoint toPoint:toPoint lineWidth:lineWidth lineColor:[UIColor blackColor]];
}

/**
 划线
 
 @param fromPoint 起始点
 @param toPoint 终点
 @param lineWidth 线宽
 @param lineColor 线颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint lineWidth:(CGFloat)lineWidth lineColor:(id)lineColor {
    return [self drawLinePointArray:@[[NSValue valueWithCGPoint:CGPointMake(fromPoint.x, fromPoint.y)],[NSValue valueWithCGPoint:CGPointMake(toPoint.x, toPoint.y)]] lineWidth:lineWidth strokeColor:lineColor];
    
}

/**
 划线
 
 @param pointArray 所划线的点的集合
 @param lineWidth 线宽
 @param strokeColor 线颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawLinePointArray:(NSArray <NSValue *>*)pointArray lineWidth:(CGFloat)lineWidth strokeColor:(id)strokeColor {
    if (pointArray.count < 2) {
        return nil;
    }
    CGContextRef     ref = UIGraphicsGetCurrentContext();
    NSValue   *firstValue = [pointArray firstObject];
    CGPoint   firstPoint = [firstValue CGPointValue];
    CGContextMoveToPoint(ref, firstPoint.x,firstPoint.y);
    for (int i = 1; i < pointArray.count; i ++) {
        NSValue   *value = pointArray[i];
        CGPoint   point = [value CGPointValue];
        CGContextAddLineToPoint(ref, point.x, point.y);
    }
    CGContextSetLineWidth(ref, lineWidth);
    CGContextSetLineCap(ref, kCGLineCapRound);
    CGContextSetLineJoin(ref, kCGLineJoinRound);
    if (strokeColor) {
        [[UIColor safeColor:strokeColor baseColor:[UIColor blackColor]] setStroke];
        CGContextStrokePath(ref);
    }
    return ref;
}

/**
 划线
 
 @param pointArray 所划线的点的集合
 @param lineWidth 线宽
 @param fillColor 填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawLinePointArray:(NSArray <NSValue *>*)pointArray lineWidth:(CGFloat)lineWidth fillColor:(id)fillColor {
    if (pointArray.count < 2) {
        return nil;
    }
    CGContextRef     ref = UIGraphicsGetCurrentContext();
    NSValue   *firstValue = [pointArray firstObject];
    CGPoint   firstPoint = [firstValue CGPointValue];
    CGContextMoveToPoint(ref, firstPoint.x,firstPoint.y);
    for (int i = 1; i < pointArray.count; i ++) {
        NSValue   *value = pointArray[i];
        CGPoint   point = [value CGPointValue];
        CGContextAddLineToPoint(ref, point.x, point.y);
    }
    CGContextSetLineWidth(ref, lineWidth);
    CGContextSetLineCap(ref, kCGLineCapRound);
    CGContextSetLineJoin(ref, kCGLineJoinRound);
    if (fillColor) {
        
        [[UIColor safeColor:fillColor baseColor:[UIColor blackColor]] setFill];
        CGContextFillPath(ref);
    }
    return ref;
}

/**
 划线
 
 @param pointArray 所划线的点的集合
 @param lineWidth 线宽
 @param strokeColor 线颜色 UIColor或者NSString格式
 @param fillColor 填充颜色 UIColor或者NSString格式
 */
+ (void)drawLinePointArray:(NSArray <NSValue *>*)pointArray lineWidth:(CGFloat)lineWidth strokeColor:(nullable id)strokeColor fillColor:(nullable id)fillColor {
    [self drawLinePointArray:pointArray lineWidth:lineWidth strokeColor:strokeColor];
    [self drawLinePointArray:pointArray lineWidth:lineWidth fillColor:fillColor];
}

/**
 画矩形
 
 线宽默认为1
 */
+ (CGContextRef)drawRect:(CGRect)rect {
   return [self drawRect:rect lineWidth:1];
}

/**
 画矩形
 
 @param lineWidth 线宽
 */
+ (CGContextRef)drawRect:(CGRect)rect lineWidth:(CGFloat)lineWidth {
    return [self drawRect:rect lineWidth:lineWidth strokeColor:[UIColor blackColor]];
}

/**
 画矩形
 
 @param lineWidth 线宽
 @param strokeColor 线颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawRect:(CGRect)rect lineWidth:(CGFloat)lineWidth strokeColor:(id)strokeColor {
    CGContextRef     ref = UIGraphicsGetCurrentContext();
    CGContextAddRect(ref, rect);
    CGContextSetLineWidth(ref, lineWidth);
    CGContextSetLineCap(ref, kCGLineCapRound);
    if (strokeColor) {
        [[UIColor safeColor:strokeColor] setStroke];
    }
    CGContextStrokePath(ref);
    return ref;
}

/**
 画矩形
 
 @param lineWidth 线宽
 @param fillColor 填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawRect:(CGRect)rect lineWidth:(CGFloat)lineWidth fillColor:(id)fillColor {
    CGContextRef     ref = UIGraphicsGetCurrentContext();
    CGContextAddRect(ref, rect);
    CGContextSetLineWidth(ref, lineWidth);
    CGContextSetLineCap(ref, kCGLineCapRound);
    if (fillColor) {
        [[UIColor safeColor:fillColor]setFill];
    }
    CGContextFillPath(ref);
    return ref;
}

/**
 画矩形
 
 @param lineWidth 线宽
 @param strokeColor 线颜色 UIColor或者NSString格式
 @param fillColor 填充颜色 UIColor或者NSString格式
 */
+ (void)drawRect:(CGRect)rect lineWidth:(CGFloat)lineWidth strokeColor:(id)strokeColor fillColor:(id)fillColor {
    if (fillColor) {
        [self drawRect:rect lineWidth:lineWidth fillColor:fillColor];
    }
    if (strokeColor) {
        [self drawRect:rect lineWidth:lineWidth strokeColor:strokeColor];
    }
}


/**
 画曲线
 
 @param circleCenter 曲线圆中心点
 @param radius 曲线圆半径
 @param startAngle 曲线圆开始角度
 @param endAngle 曲线圆结束角度
 曲线圆宽度默认为1
 */
+ (CGContextRef)drawCurveCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle {
    return [self drawCurveCenter:circleCenter radius:radius startAngle:startAngle endAngle:endAngle clockwise:0 lineWidth:1 lineColor:[UIColor blackColor]];
}

/**
 画曲线
 
 @param circleCenter 曲线圆中心点
 @param radius 曲线圆半径
 @param startAngle 曲线圆开始角度
 @param endAngle 曲线圆结束角度
 @param lineWidth 曲线圆宽度
 */
+ (CGContextRef)drawCurveCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle lineWidth:(CGFloat)lineWidth {
    return [self drawCurveCenter:circleCenter radius:radius startAngle:startAngle endAngle:endAngle clockwise:0 lineWidth:lineWidth lineColor:[UIColor blackColor]];
}

/**
 画曲线
 
 @param circleCenter 曲线圆中心点
 @param radius 曲线圆半径
 @param startAngle 曲线圆开始角度
 @param endAngle 曲线圆结束角度
 @param lineWidth 曲线圆宽度
 @param lineColor 曲线圆线颜色
 */
+ (CGContextRef)drawCurveCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle lineWidth:(CGFloat)lineWidth lineColor:(id)lineColor {
    return [self drawCurveCenter:circleCenter radius:radius startAngle:startAngle endAngle:endAngle clockwise:0 lineWidth:lineWidth lineColor:lineColor];
}

/**
 画曲线
 
 @param circleCenter 曲线圆中心点
 @param radius 曲线圆半径
 @param startAngle 曲线圆开始角度
 @param endAngle 曲线圆结束角度
 @param clockwise 0顺时针  1逆时针
 @param lineWidth 曲线圆宽度
 @param lineColor 曲线圆线颜色
 */
+ (CGContextRef)drawCurveCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(int)clockwise lineWidth:(CGFloat)lineWidth lineColor:(id)lineColor {
    return [self drawCurveCenter:circleCenter radius:radius startAngle:startAngle endAngle:endAngle clockwise:0 lineWidth:lineWidth lineColor:lineColor round:NO];
}

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
+ (CGContextRef)drawCurveCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(int)clockwise lineWidth:(CGFloat)lineWidth lineColor:(id)lineColor round:(BOOL)round {
    CGContextRef  ref = UIGraphicsGetCurrentContext();
    CGContextAddArc(ref, circleCenter.x, circleCenter.y, radius, startAngle, endAngle, clockwise);
    CGContextSetLineWidth(ref, lineWidth);
    if (lineColor) {
        [[UIColor safeColor:lineColor] setStroke];
    }else {
        [[UIColor blackColor] setStroke];
    }
    if (round) {
        CGContextSetLineCap(ref, kCGLineCapRound);
        CGContextSetLineJoin(ref, kCGLineJoinRound);
    }
    CGContextStrokePath(ref);
    return ref;
}


/**
 画曲线(三点和半径画圆)
 
 @param startPoint 曲线圆开始点
 @param focusPoint 曲线圆中间点
 @param endPoint 曲线圆结束点
 @param radius 曲线圆半径
 */
+ (CGContextRef)drawCurveWithStartPoint:(CGPoint)startPoint focusPoint:(CGPoint)focusPoint endPoint:(CGPoint)endPoint radius:(CGFloat)radius {
    
    return [self drawCurveWithStartPoint:startPoint focusPoint:focusPoint endPoint:endPoint radius:radius lineWidth:1 lineColor:[UIColor blackColor]];
}

/**
 画曲线(三点和半径画圆)
 
 @param startPoint 曲线圆开始点
 @param focusPoint 曲线圆中间点
 @param endPoint 曲线圆结束点
 @param radius 曲线圆半径
 @param lineWidth 线宽
 */
+ (CGContextRef)drawCurveWithStartPoint:(CGPoint)startPoint focusPoint:(CGPoint)focusPoint endPoint:(CGPoint)endPoint radius:(CGFloat)radius lineWidth:(CGFloat)lineWidth {
    
    return [self drawCurveWithStartPoint:startPoint focusPoint:focusPoint endPoint:endPoint radius:radius lineWidth:lineWidth lineColor:[UIColor blackColor]];
}

/**
 画曲线(三点和半径画圆)
 
 @param startPoint 曲线圆开始点
 @param focusPoint 曲线圆中间点
 @param endPoint 曲线圆结束点
 @param radius 曲线圆半径
 @param lineWidth 线宽
 @param lineColor 线颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCurveWithStartPoint:(CGPoint)startPoint focusPoint:(CGPoint)focusPoint endPoint:(CGPoint)endPoint radius:(CGFloat)radius lineWidth:(CGFloat)lineWidth lineColor:(id)lineColor {
    return [self drawCurveWithStartPoint:startPoint focusPoint:focusPoint endPoint:endPoint radius:radius lineWidth:lineWidth lineColor:lineColor round:NO];
}

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
+ (CGContextRef)drawCurveWithStartPoint:(CGPoint)startPoint focusPoint:(CGPoint)focusPoint endPoint:(CGPoint)endPoint radius:(CGFloat)radius lineWidth:(CGFloat)lineWidth lineColor:(id)lineColor round:(BOOL)round {
    CGContextRef  ref = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ref, startPoint.x, startPoint.y);
    CGContextAddArcToPoint(ref, focusPoint.x, focusPoint.y, endPoint.x, endPoint.y, radius);
    CGContextSetLineWidth(ref, lineWidth);
    if (lineColor) {
        [[UIColor safeColor:lineColor] setStroke];
    }else {
        [[UIColor blackColor] setStroke];
    }
    if (round) {
        CGContextSetLineCap(ref, kCGLineCapRound);
        CGContextSetLineJoin(ref, kCGLineJoinRound);
    }
    CGContextStrokePath(ref);
    return ref;
}

/**
 画圆
 */
+ (CGContextRef)drawCircleFrame:(CGRect)frame {
    return [self drawCircleFrame:frame color:[UIColor blackColor]];
}

/**
 画圆
 
 @param color 双填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleFrame:(CGRect)frame color:(id)color {
    CGContextRef   ref = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ref, frame);
    if (color) {
        [[UIColor safeColor:color] set];
    }
    CGContextFillPath(ref);
    return ref;
}

/**
 画圆
 */
+ (CGContextRef)drawCircleCenter:(CGPoint)center radius:(CGFloat)radius {
    
    return [self drawCircleFrame:CGRectMake(center.x - radius, center.y - radius, radius * 2, radius * 2)];
    
}

/**
 画圆
 
 @param color 双填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleCenter:(CGPoint)center radius:(CGFloat)radius color:(id)color {
    return [self drawCircleFrame:CGRectMake(center.x - radius, center.y - radius, radius * 2, radius * 2) color:color];
}

/**
 画圆
 
 @param strokeColor 外填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleFrame:(CGRect)frame strokeColor:(id)strokeColor {
    return [self drawCircleFrame:frame lineWidth:1.0 strokeColor:strokeColor];
}

/**
 画圆
 
 @param lineWidth 线宽
 @param strokeColor 外填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleFrame:(CGRect)frame lineWidth:(CGFloat)lineWidth strokeColor:(id)strokeColor {
    CGContextRef   ref = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ref, frame);
    CGContextSetLineWidth(ref, lineWidth);//线的宽度
    if (strokeColor) {
        [[UIColor safeColor:strokeColor] setStroke];
    }
    CGContextStrokePath(ref);
    return ref;
}

/**
 画圆
 
 @param strokeColor 外填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleCenter:(CGPoint)center radius:(CGFloat)radius strokeColor:(id)strokeColor {
    return [self drawCircleFrame:CGRectMake(center.x - radius, center.y - radius, radius * 2, radius * 2) lineWidth:1 strokeColor:strokeColor];
}

/**
 画圆
 
 @param strokeColor 外填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleCenter:(CGPoint)center radius:(CGFloat)radius lineWidth:(CGFloat)width strokeColor:(id)strokeColor {
    return [self drawCircleFrame:CGRectMake(center.x - radius, center.y - radius, radius * 2, radius * 2) lineWidth:width strokeColor:strokeColor];
}

/**
 画圆
 
 @param fillColor 内填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleFrame:(CGRect)frame fillColor:(id)fillColor {
    CGContextRef   ref = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ref, frame);
    if (fillColor) {
        [[UIColor safeColor:fillColor] setFill];
    }
    CGContextFillPath(ref);
    return ref;
}

/**
 画圆
 
 @param fillColor 内填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCircleCenter:(CGPoint)center radius:(CGFloat)radius fillColor:(id)fillColor {
    return [self drawCircleFrame:CGRectMake(center.x - radius, center.y - radius, radius * 2, radius * 2) fillColor:fillColor];
}



/**
 画饼
 
 @param circleCenter 圆心点
 @param radius 半径
 @param startAngle 开始角度
 @param endAngle 结束角度
 */
+ (CGContextRef)drawCakeCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle {
    return [self drawCakeCenter:circleCenter radius:radius startAngle:startAngle endAngle:endAngle clockwise:0 color:[UIColor blackColor]];
}

/**
 画饼
 
 @param circleCenter 圆心点
 @param radius 半径
 @param startAngle 开始角度
 @param endAngle 结束角度
 @param color 双填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCakeCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle color:(id)color {
    return [self drawCakeCenter:circleCenter radius:radius startAngle:startAngle endAngle:endAngle clockwise:0 color:color];
}

/**
 画饼
 
 @param circleCenter 圆心点
 @param radius 半径
 @param startAngle 开始角度
 @param endAngle 结束角度
 @param clockwise 0顺时针  1逆时针
 @param color 双填充颜色 UIColor或者NSString格式
 */
+ (CGContextRef)drawCakeCenter:(CGPoint)circleCenter radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle  clockwise:(int)clockwise color:(id)color {
    CGContextRef     ref = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ref, circleCenter.x, circleCenter.y);
    CGContextAddArc(ref, circleCenter.x, circleCenter.y,radius, startAngle, endAngle, clockwise);
    CGContextClosePath(ref);
    if (color) {
        [[UIColor safeColor:color] set];
    }
    CGContextFillPath(ref);
    return ref;
}

/**
 画字符串
 
 @param center 中心点坐标
 @param font 字体大小 UIFont或者NSString或者NSNumber格式
 @param color UIColor或者NSString格式
 */
+ (void)drawString:(NSString *)str center:(CGPoint)center font:(id)font color:(id)color {
    CGRect   strRect = [str boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont safeFont:font]} context:nil];
    [str drawAtPoint:CGPointMake(center.x - strRect.size.width * 0.5, center.y - strRect.size.height * 0.5) withAttributes:@{NSFontAttributeName:[UIFont safeFont:font],NSForegroundColorAttributeName:[UIColor safeColor:color]}];
}

/**
 画字符串
 
 @param rect 范围
 @param font 字体大小 UIFont或者NSString或者NSNumber格式
 @param color UIColor或者NSString格式
 */
+ (void)drawString:(NSString *)str rect:(CGRect)rect font:(id)font color:(id)color {
    [str drawInRect:rect withAttributes:@{NSFontAttributeName:[UIFont safeFont:font],NSForegroundColorAttributeName:[UIColor safeColor:color]}];
}



@end
