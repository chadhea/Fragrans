//
//  UITapGestureRecognizer+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/2/18.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITapGestureRecognizer (Fragrans)

//  UIGestureRecognizer+YYAdd.h
//  YYKit <https://github.com/ibireme/YYKit>

/**
 Initializes an allocated gesture-recognizer object with a action block.
 
 @param block  An action block that to handle the gesture recognized by the
 receiver. nil is invalid. It is retained by the gesture.
 
 @return An initialized instance of a concrete UIGestureRecognizer subclass or
 nil if an error occurred in the attempt to initialize the object.
 */
- (instancetype)initWithActionBlock:(void (^)(id sender))block;

/**
 Adds an action block to a gesture-recognizer object. It is retained by the
 gesture.
 
 @param block A block invoked by the action message. nil is not a valid value.
 */
- (void)addActionBlock:(void (^)(id sender))block;

/**
 Remove all action blocks.
 */
- (void)removeAllActionBlocks;

/**
 添加手势
 单击事件
 
 @param view 需要添加手势的view
 */
+ (void)tapWith:(UIView *)view target:(id)target action:(SEL)action;

/**
 添加手势
 单击和双击事件
 
 @param view 需要添加手势的view
 */
+ (void)tapWith:(UIView *)view target:(id)target singleAction:(SEL)singleAction  doubleAction:(SEL)doubleAction;

/**
 添加手势
 指定点击次数的事件
 
 @param view 需要添加手势的view
 */
+ (void)tapWith:(UIView *)view tapCount:(NSInteger)count target:(id)target action:(SEL)action;

/**
 添加手势
 拖动事件
 
 @param view 需要添加手势的view
 */
+ (void)panWith:(UIView *)view target:(id)target action:(SEL)action;

/**
 添加手势
 缩放事件
 
 @param view 需要添加手势的view
 */
+ (void)pinchWith:(UIView *)view target:(id)target action:(SEL)action;

/**
 添加手势
 旋转事件
 
 @param view 需要添加手势的view
 */
+ (void)rotationWith:(UIView *)view target:(id)target action:(SEL)action;

/**
 添加手势
 长按事件
 
 @param view 需要添加手势的view
 */
+ (void)longPressWith:(UIView *)view target:(id)target action:(SEL)action;

/**
 添加手势
 拖动事件
 
 @param view 需要添加手势的view
 */
+ (void)swipeWith:(UIView *)view target:(id)target action:(SEL)action;



@end

NS_ASSUME_NONNULL_END
