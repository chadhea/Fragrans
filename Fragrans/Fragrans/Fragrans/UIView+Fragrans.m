//
//  UIView+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/2/15.
//

#import "UIView+Fragrans.h"
#import "UITapGestureRecognizer+Fragrans.h"
#import <objc/runtime.h>

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


@end
