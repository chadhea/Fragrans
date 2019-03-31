//
//  UIImageView+Fragrans.h
//  Fragrans
//
//  Created by qmz on 2019/2/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (Fragrans)

/**
 create imageView by tap(点击事件)
 */
- (UIImageView *)initWithTap:(void(^)(id sender))tapBlock;

/**
 create imageView by tap(点击事件)
 */
+ (UIImageView *)imageViewWithTap:(void(^)(id sender))tapBlock;

/**
 create imageView by image + tap(点击事件)
 */
- (UIImageView *)initWithImage:(id)image tap:(void(^)(id sender))tapBlock;

/**
 create imageView by image + tap(点击事件)
 */
+ (UIImageView *)imageViewWithImage:(id)image tap:(void(^)(id sender))tapBlock;

/**
 create imageView by frame + image
 
 @param image UIImage或者NSString格式
 */
- (UIImageView *)initWithFrame:(CGRect)frame image:(id)image;

/**
 create imageView by frame + image
 
 @param image UIImage或者NSString格式
 */
+ (UIImageView *)imageViewWithFrame:(CGRect)frame image:(id)image;

/**
 create imageView by frame + image + tap(点击事件)
 
 @param image UIImage或者NSString格式
 */
- (UIImageView *)initWithFrame:(CGRect)frame image:(id)image tap:(void(^)(id sender))tapBlock;

/**
 create imageView by frame + image + tap(点击事件)
 
 @param image UIImage或者NSString格式
 */
+ (UIImageView *)imageViewWithFrame:(CGRect)frame image:(id)image tap:(void(^)(id sender))tapBlock;

/**
 create imageView by center and bounds
 */
- (UIImageView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create imageView by center and bounds
 */
+ (UIImageView *)imageViewWithCenter:(CGPoint)center bounds:(CGRect)bounds;

/**
 create imageView by center and bounds + tap(点击事件)
 */
- (UIImageView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds tap:(void(^)(id sender))tapBlock;

/**
 create imageView by center and bounds + tap(点击事件)
 */
+ (UIImageView *)imageViewWithCenter:(CGPoint)center bounds:(CGRect)bounds tap:(void(^)(id sender))tapBlock;

/**
 create imageView by center and bounds + image
 
 @param image UIImage或者NSString格式
 */
- (UIImageView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image;

/**
 create imageView by center and bounds + image
 
 @param image UIImage或者NSString格式
 */
+ (UIImageView *)imageViewWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image;

/**
 create imageView by center and bounds + image + tap(点击事件)
 
 @param image UIImage或者NSString格式
 */
- (UIImageView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image tap:(void(^)(id sender))tapBlock;

/**
 create imageView by center and bounds + image + tap(点击事件)
 
 @param image UIImage或者NSString格式
 */
+ (UIImageView *)imageViewWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image tap:(void(^)(id sender))tapBlock;

@end

NS_ASSUME_NONNULL_END
