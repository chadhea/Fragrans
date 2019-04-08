//
//  UIImageView+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/2/15.
//

#import "UIImageView+Fragrans.h"
#import "UIView+Fragrans.h"
#import "UIImage+Fragrans.h"
@implementation UIImageView (Fragrans)

/**
 create imageView by tap(点击事件)
 */
- (UIImageView *)initWithTap:(void(^)(id sender))tapBlock {
    return [UIImageView imageViewWithTap:tapBlock];
}

/**
 create imageView by tap(点击事件)
 */
+ (UIImageView *)imageViewWithTap:(void(^)(id sender))tapBlock {
    UIImageView   *imageView = [[UIImageView alloc] init];
    [imageView addTapGestureRecognizerWithActionBlock:tapBlock];
    return imageView;
}

/**
 create imageView by image + tap(点击事件)
 
 @param image UIImage或者NSString格式
 */
- (UIImageView *)initWithImage:(id)image tap:(void(^)(id sender))tapBlock {
    return [UIImageView imageViewWithImage:image tap:tapBlock];
}

/**
 create imageView by image + tap(点击事件)
 
 @param image UIImage或者NSString格式
 */
+ (UIImageView *)imageViewWithImage:(id)image tap:(void(^)(id sender))tapBlock {
    UIImageView   *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage safeImage:image];
    imageView.userInteractionEnabled = YES;
    [imageView addTapGestureRecognizerWithActionBlock:tapBlock];
    return imageView;
}

/**
 create imageView by frame + image
 
 @param image UIImage或者NSString格式
 */
- (UIImageView *)initWithFrame:(CGRect)frame image:(id)image {
    return [UIImageView imageViewWithFrame:frame image:image];
}

/**
 create imageView by frame + image
 
 @param image UIImage或者NSString格式
 */
+ (UIImageView *)imageViewWithFrame:(CGRect)frame image:(id)image {
    UIImageView   *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = [UIImage safeImage:image];
    imageView.userInteractionEnabled = YES;
    return imageView;
}

/**
 create imageView by frame + image + tap(点击事件)
 
 @param image UIImage或者NSString格式
 */
- (UIImageView *)initWithFrame:(CGRect)frame image:(id)image tap:(void(^)(id sender))tapBlock {
    return [UIImageView imageViewWithFrame:frame image:image tap:tapBlock];
}

/**
 create imageView by frame + image + tap(点击事件)
 
 @param image UIImage或者NSString格式
 */
+ (UIImageView *)imageViewWithFrame:(CGRect)frame image:(id)image tap:(void(^)(id sender))tapBlock {
    UIImageView   *imageView = [UIImageView imageViewWithFrame:frame image:image];
    [imageView addTapGestureRecognizerWithActionBlock:tapBlock];
    return imageView;
}

/**
 create imageView by center and bounds
 */
- (UIImageView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return [UIImageView imageViewWithCenter:center bounds:bounds];
}

/**
 create imageView by center and bounds
 */
+ (UIImageView *)imageViewWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    UIImageView   *imageView = [[UIImageView alloc] init];
    imageView.center = center;
    imageView.bounds = bounds;
    imageView.userInteractionEnabled = YES;
    return imageView;
}

/**
 create imageView by center and bounds + tap(点击事件)
 */
- (UIImageView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds tap:(void(^)(id sender))tapBlock {
    return [UIImageView imageViewWithCenter:center bounds:bounds tap:tapBlock];
}

/**
 create imageView by center and bounds + tap(点击事件)
 */
+ (UIImageView *)imageViewWithCenter:(CGPoint)center bounds:(CGRect)bounds tap:(void(^)(id sender))tapBlock {
    UIImageView   *imageView = [UIImageView imageViewWithCenter:center bounds:bounds];
    [imageView addTapGestureRecognizerWithActionBlock:tapBlock];
    return imageView;
}

/**
 create imageView by center and bounds + image
 
 @param image UIImage或者NSString格式
 */
- (UIImageView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image {
    return [UIImageView imageViewWithCenter:center bounds:bounds image:image];
}

/**
 create imageView by center and bounds + image
 
 @param image UIImage或者NSString格式
 */
+ (UIImageView *)imageViewWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image {
    UIImageView   *imageView = [[UIImageView alloc] init];
    imageView.center = center;
    imageView.bounds = bounds;
    imageView.image = [UIImage safeImage:image];
    imageView.userInteractionEnabled = YES;
    return imageView;
}

/**
 create imageView by center and bounds + image + tap(点击事件)
 
 @param image UIImage或者NSString格式
 */
- (UIImageView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image tap:(void(^)(id sender))tapBlock {
    return [UIImageView imageViewWithCenter:center bounds:bounds image:image tap:tapBlock];
}

/**
 create imageView by center and bounds + image + tap(点击事件)
 
 @param image UIImage或者NSString格式
 */
+ (UIImageView *)imageViewWithCenter:(CGPoint)center bounds:(CGRect)bounds image:(id)image tap:(void(^)(id sender))tapBlock {
    UIImageView   *imageView = [UIImageView imageViewWithCenter:center bounds:bounds image:image];
    [imageView addTapGestureRecognizerWithActionBlock:tapBlock];
    return imageView;
}

@end
