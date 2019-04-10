//
//  UIActivityIndicatorView+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/4/10.
//

#import "UIActivityIndicatorView+Fragrans.h"
#import "UIKitBridge.h"
@implementation UIActivityIndicatorView (Fragrans)

/**
 UIActivityIndicatorView
 frame + style + color + startAnimate
 
 @param color 中间动画部分颜色 UIColor或者NSString或者NSNumber格式
 @param startAnimate 是否开始动画
 */
+ (UIActivityIndicatorView *)activityIndicatorViewWithFrame:(CGRect)frame style:(UIActivityIndicatorViewStyle)style color:(nullable id)color startAnimate:(BOOL)startAnimate {
    return [UIActivityIndicatorView activityIndicatorViewWithFrame:frame style:style color:color backgroundColor:nil startAnimate:startAnimate];
}

/**
 UIActivityIndicatorView
 frame + style + color + backgroundColor + startAnimate
 
 @param color 中间动画部分颜色 UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param startAnimate 是否开始动画
 */
+ (UIActivityIndicatorView *)activityIndicatorViewWithFrame:(CGRect)frame style:(UIActivityIndicatorViewStyle)style color:(nullable id)color backgroundColor:(nullable id)backgroundColor startAnimate:(BOOL)startAnimate {
    UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:frame];
    [activityIndicator setActivityIndicatorViewStyle:style];
    if (color) {
        activityIndicator.color = [UIKitBridge safeColor:color baseColor:[UIColor whiteColor]];
    }
    if (backgroundColor) {
        activityIndicator.backgroundColor = [UIKitBridge safeColor:backgroundColor];
    }
    if (startAnimate) {
        [activityIndicator startAnimating];
    }
    return activityIndicator;
}

/**
 UIActivityIndicatorView
 frame + hudSize + hudColor + startAnimate
 
 @param frame 整个ActivityIndicatorView的大小
 @param hudSize 中间动画部分的大小
 @param hudColor 中间动画部分颜色 UIColor或者NSString或者NSNumber格式
 @param startAnimate 是否开始动画
 */
+ (UIActivityIndicatorView *)activityIndicatorViewWithFrame:(CGRect)frame hudSize:(CGSize)hudSize hudColor:(nullable id)hudColor startAnimate:(BOOL)startAnimate {
    return [UIActivityIndicatorView activityIndicatorViewWithFrame:frame hudSize:hudSize hudColor:hudColor backgroundColor:nil startAnimate:startAnimate];
}

/**
 UIActivityIndicatorView
 frame + hudSize + hudColor + backgroundColor + startAnimate
 
 @param frame 整个ActivityIndicatorView的大小
 @param hudSize 中间动画部分的大小
 @param hudColor 中间动画部分颜色 UIColor或者NSString或者NSNumber格式
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param startAnimate 是否开始动画
 */
+ (UIActivityIndicatorView *)activityIndicatorViewWithFrame:(CGRect)frame hudSize:(CGSize)hudSize hudColor:(nullable id)hudColor backgroundColor:(nullable id)backgroundColor startAnimate:(BOOL)startAnimate {
    CGFloat   new_width = 20 * frame.size.width / (hudSize.width * 1.0f);
    CGFloat   new_height = 20 * frame.size.height / (hudSize.height * 1.0f);
    CGRect  new_frame = CGRectMake(frame.origin.x + (frame.size.width - new_width) * 0.5, frame.origin.y + (frame.size.height - new_height) * 0.5, new_width, new_height);
    UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:new_frame];
    [activityIndicator setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleWhite];
    CGFloat  ratioW = frame.size.width/(new_width * 1.0f);
    CGFloat  ratioH = frame.size.height/(new_height * 1.0f);
    CGAffineTransform transform = CGAffineTransformMakeScale(ratioW, ratioH);
    activityIndicator.transform = transform;
    if (hudColor) {
        activityIndicator.color = [UIKitBridge safeColor:hudColor baseColor:[UIColor whiteColor]];
    }else {
        activityIndicator.color = [UIColor whiteColor];
    }
    if (backgroundColor) {
        activityIndicator.backgroundColor = [UIKitBridge safeColor:backgroundColor];
    }
    if (startAnimate) {
        [activityIndicator startAnimating];
    }
    return activityIndicator;
}

@end
