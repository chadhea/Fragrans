//
//  UITapGestureRecognizer+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/2/18.
//

#import "UITapGestureRecognizer+Fragrans.h"
#import <objc/runtime.h>

static const int block_key;

@interface FRG_YYUIGestureRecognizerBlockTarget : NSObject

@property (nonatomic, copy) void (^block)(id sender);

- (id)initWithBlock:(void (^)(id sender))block;
- (void)invoke:(id)sender;

@end

@implementation FRG_YYUIGestureRecognizerBlockTarget

- (id)initWithBlock:(void (^)(id sender))block{
    self = [super init];
    if (self) {
        _block = [block copy];
    }
    return self;
}

- (void)invoke:(id)sender {
    if (_block) _block(sender);
}

@end

@implementation UITapGestureRecognizer (Fragrans)

- (instancetype)initWithActionBlock:(void (^)(id sender))block {
    self = [self init];
    [self addActionBlock:block];
    return self;
}

- (void)addActionBlock:(void (^)(id sender))block {
    FRG_YYUIGestureRecognizerBlockTarget *target = [[FRG_YYUIGestureRecognizerBlockTarget alloc] initWithBlock:block];
    [self addTarget:target action:@selector(invoke:)];
    NSMutableArray *targets = [self frg_yy_allUIGestureRecognizerBlockTargets];
    [targets addObject:target];
}

- (void)removeAllActionBlocks{
    NSMutableArray *targets = [self frg_yy_allUIGestureRecognizerBlockTargets];
    [targets enumerateObjectsUsingBlock:^(id target, NSUInteger idx, BOOL *stop) {
        [self removeTarget:target action:@selector(invoke:)];
    }];
    [targets removeAllObjects];
}

- (NSMutableArray *)frg_yy_allUIGestureRecognizerBlockTargets {
    NSMutableArray *targets = objc_getAssociatedObject(self, &block_key);
    if (!targets) {
        targets = [NSMutableArray array];
        objc_setAssociatedObject(self, &block_key, targets, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return targets;
}

/**
 添加手势
 单击事件
 
 @param view 需要添加手势的view
 */
+ (void)tapWith:(UIView *)view target:(id)target action:(SEL)action {
    UITapGestureRecognizer   *tap = [[UITapGestureRecognizer alloc]initWithTarget:target action:action];
    [view addGestureRecognizer:tap];
}

/**
 添加手势
 单击和双击事件
 
 @param view 需要添加手势的view
 */
+ (void)tapWith:(UIView *)view target:(id)target singleAction:(SEL)singleAction  doubleAction:(SEL)doubleAction {
    UITapGestureRecognizer   *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:target action:singleAction];
    singleTap.numberOfTapsRequired = 1;
    UITapGestureRecognizer   *doubleTap = [[UITapGestureRecognizer alloc]initWithTarget:target action:doubleAction];
    doubleTap.numberOfTapsRequired = 2;
    [singleTap requireGestureRecognizerToFail:doubleTap];
    [view addGestureRecognizer:singleTap];
    [view addGestureRecognizer:doubleTap];
}

/**
 添加手势
 指定点击次数的事件
 
 @param view 需要添加手势的view
 */
+ (void)tapWith:(UIView *)view tapCount:(NSInteger)count target:(id)target action:(SEL)action {
    UITapGestureRecognizer   *tap = [[UITapGestureRecognizer alloc]initWithTarget:target action:action];
    tap.numberOfTapsRequired = count;
    [view addGestureRecognizer:tap];
}

/**
 添加手势
 拖动事件
 
 @param view 需要添加手势的view
 */
+ (void)panWith:(UIView *)view target:(id)target action:(SEL)action {
    UIPanGestureRecognizer   *pan = [[UIPanGestureRecognizer alloc]initWithTarget:target action:action];
    [view addGestureRecognizer:pan];
}

/**
 添加手势
 缩放事件
 
 @param view 需要添加手势的view
 */
+ (void)pinchWith:(UIView *)view target:(id)target action:(SEL)action {
    UIPinchGestureRecognizer   *pinch = [[UIPinchGestureRecognizer alloc]initWithTarget:target action:action];
    [view addGestureRecognizer:pinch];
}

/**
 添加手势
 旋转事件
 
 @param view 需要添加手势的view
 */
+ (void)rotationWith:(UIView *)view target:(id)target action:(SEL)action {
    UIRotationGestureRecognizer   *rotation = [[UIRotationGestureRecognizer alloc]initWithTarget:target action:action];
    [view addGestureRecognizer:rotation];
}

/**
 添加手势
 长按事件
 
 @param view 需要添加手势的view
 */
+ (void)longPressWith:(UIView *)view target:(id)target action:(SEL)action {
    UILongPressGestureRecognizer   *longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:target action:action];
    [view addGestureRecognizer:longPress];
}

/**
 添加手势
 拖动事件
 
 @param view 需要添加手势的view
 */
+ (void)swipeWith:(UIView *)view target:(id)target action:(SEL)action {
    UISwipeGestureRecognizer   *swipe = [[UISwipeGestureRecognizer alloc]initWithTarget:target action:action];
    [view addGestureRecognizer:swipe];
}

@end
