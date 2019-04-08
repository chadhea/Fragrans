//
//  UIScrollView+Fragrans.m
//  Fragrans
//
//  Created by qmz on 2019/3/8.
//

#import "UIScrollView+Fragrans.h"
#import "UIView+Fragrans.h"
#import "UIImage+Fragrans.h"
#import "UIImageView+Fragrans.h"
#import "UIKitBridge.h"
@implementation UIScrollView (Fragrans)

/**
 create scrollView by backgroundColor
 
 */
- (UIScrollView *)initWithBackgroundColor:(id)backgroundColor {
    return [UIScrollView scrollViewWithContentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIScrollView *)scrollViewWithBackgroundColor:(id)backgroundColor {
    return [UIScrollView scrollViewWithContentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
- (UIScrollView *)initWithBackgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator {
    return [UIScrollView scrollViewWithContentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:YES];
}

/**
 create scrollView by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
+ (UIScrollView *)scrollViewWithBackgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator {
    return [UIScrollView scrollViewWithContentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:YES];
}

/**
 create scrollView by backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithBackgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces {
    return [UIScrollView scrollViewWithContentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
}

/**
 create scrollView by backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithBackgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces {
    return [UIScrollView scrollViewWithContentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
}

/**
 create scrollView by backgroundColor + showsScrollIndicator + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithBackgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate {
    return [UIScrollView scrollViewWithContentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces delegate:delegate];
}

/**
 create scrollView by backgroundColor + showsScrollIndicator + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithBackgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate {
    return [UIScrollView scrollViewWithContentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces delegate:delegate];
}

/**
 create scrollView by contentSize
 
 */
- (UIScrollView *)initWithContentSize:(CGSize)contentSize {
    return [UIScrollView scrollViewWithContentSize:contentSize backgroundColor:nil showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by contentSize
 
 */
+ (UIScrollView *)scrollViewWithContentSize:(CGSize)contentSize {
    return [UIScrollView scrollViewWithContentSize:contentSize backgroundColor:nil showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by contentSize + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIScrollView *)initWithContentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor {
    return [UIScrollView scrollViewWithContentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by contentSize + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIScrollView *)scrollViewWithContentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor {
    return [UIScrollView scrollViewWithContentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by contentSize + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
- (UIScrollView *)initWithContentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator {
    return [UIScrollView scrollViewWithContentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:YES];
}

/**
 create scrollView by contentSize + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
+ (UIScrollView *)scrollViewWithContentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator {
    return [UIScrollView scrollViewWithContentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:YES];
}

/**
 create scrollView by contentSize + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithContentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces {
    return [UIScrollView scrollViewWithContentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
}

/**
 create scrollView by contentSize + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithContentSize:(CGSize)contentSize backgroundColor:(nullable id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces {
    UIScrollView   *scrollView = [[UIScrollView alloc] init];
    scrollView.contentSize = contentSize;
    scrollView.backgroundColor = [UIKitBridge safeColor:backgroundColor baseColor:[UIColor whiteColor]];
    if (showsScrollIndicator) {
        scrollView.showsHorizontalScrollIndicator = YES;
        scrollView.showsVerticalScrollIndicator = YES;
    }else {
        scrollView.showsHorizontalScrollIndicator = NO;
        scrollView.showsVerticalScrollIndicator = NO;
    }
    if (bounces) {
        scrollView.bounces = YES;
    }else {
        scrollView.bounces = NO;
    }
    
    return scrollView;
}

/**
 create scrollView by contentSize + backgroundColor + showsScrollIndicator + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithContentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate {
    return [UIScrollView scrollViewWithContentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces delegate:delegate];
}

/**
 create scrollView by contentSize + backgroundColor + showsScrollIndicator + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithContentSize:(CGSize)contentSize backgroundColor:(nullable id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate {
    UIScrollView   *scrollView = [UIScrollView scrollViewWithContentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
    if (delegate) {
        scrollView.delegate = delegate;
    }
    return scrollView;
}

/**
 create scrollView by frame + backgroundColor
 
 */
- (UIScrollView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor {
    return [UIScrollView scrollViewWithFrame:frame contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by frame + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor {
    return [UIScrollView scrollViewWithFrame:frame contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by frame + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
- (UIScrollView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator {
    return [UIScrollView scrollViewWithFrame:frame contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:YES];
}

/**
 create scrollView by frame + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator {
    return [UIScrollView scrollViewWithFrame:frame contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:YES];
}

/**
 create scrollView by frame + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces {
    return [UIScrollView scrollViewWithFrame:frame contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
}

/**
 create scrollView by frame + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces {
    return [UIScrollView scrollViewWithFrame:frame contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
}

/**
 create scrollView by frame + backgroundColor + showsScrollIndicator + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate {
    return [UIScrollView scrollViewWithFrame:frame contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces delegate:delegate];
}

/**
 create scrollView by frame + backgroundColor + showsScrollIndicator + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate {
    return [UIScrollView scrollViewWithFrame:frame contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces delegate:delegate];
}

/**
 create scrollView by frame + contentSize
 
 */
- (UIScrollView *)initWithFrame:(CGRect)frame contentSize:(CGSize)contentSize {
    return [UIScrollView scrollViewWithFrame:frame contentSize:contentSize backgroundColor:nil showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by frame + contentSize
 
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame contentSize:(CGSize)contentSize {
    return [UIScrollView scrollViewWithFrame:frame contentSize:contentSize backgroundColor:nil showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by frame + contentSize + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIScrollView *)initWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor {
    return [UIScrollView scrollViewWithFrame:frame contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by frame + contentSize + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor {
    return [UIScrollView scrollViewWithFrame:frame contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by frame + contentSize + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
- (UIScrollView *)initWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator {
    return [UIScrollView scrollViewWithFrame:frame contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:YES];
}

/**
 create scrollView by frame + contentSize + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator {
    return [UIScrollView scrollViewWithFrame:frame contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:YES];
}

/**
 create scrollView by frame + contentSize + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces {
    return [UIScrollView scrollViewWithFrame:frame contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
}

/**
 create scrollView by frame + contentSize + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(nullable id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces {
    UIScrollView   *scrollView = [UIScrollView scrollViewWithContentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
    scrollView.frame = frame;
    return scrollView;
}

/**
 create scrollView by frame + contentSize + backgroundColor + showsScrollIndicator
 + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate {
    return [UIScrollView scrollViewWithFrame:frame contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces delegate:delegate];
}

/**
 create scrollView by frame + contentSize + backgroundColor + showsScrollIndicator
 + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithFrame:(CGRect)frame contentSize:(CGSize)contentSize backgroundColor:(nullable id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate {
    UIScrollView   *scrollView = [UIScrollView scrollViewWithFrame:frame contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
    if (delegate) {
        scrollView.delegate = delegate;
    }
    return scrollView;
}

/**
 create scrollView by center and bounds
 
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:CGSizeZero backgroundColor:nil showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by center and bounds
 
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:CGSizeZero backgroundColor:nil showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by center and bounds + backgroundColor
 
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by center and bounds + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by center and bounds + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:YES];
}

/**
 create scrollView by center and bounds + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:YES];
}

/**
 create scrollView by center and bounds + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
}

/**
 create scrollView by center and bounds + backgroundColor + showsScrollIndicator + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
}

/**
 create scrollView by center and bounds + backgroundColor + showsScrollIndicator + bounces
 + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces delegate:delegate];
}

/**
 create scrollView by center and bounds + backgroundColor + showsScrollIndicator + bounces
 + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:CGSizeZero backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces delegate:delegate];
}

/**
 create scrollView by center and bounds + contentSize
 
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:contentSize backgroundColor:nil showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by center and bounds + contentSize
 
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:contentSize backgroundColor:nil showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by center and bounds + contentSize + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by center and bounds + contentSize + backgroundColor
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:YES bounces:YES];
}

/**
 create scrollView by center and bounds + contentSize + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:YES];
}

/**
 create scrollView by center and bounds + contentSize + backgroundColor + showsScrollIndicator
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:YES];
}

/**
 create scrollView by center and bounds + contentSize + backgroundColor + showsScrollIndicator
 + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
}

/**
 create scrollView by center and bounds + contentSize + backgroundColor + showsScrollIndicator
 + bounces
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(nullable id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces {
    UIScrollView   *scrollView = [UIScrollView scrollViewWithContentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
    scrollView.center = center;
    scrollView.bounces = bounces;
    return scrollView;
}

/**
 create scrollView by center and bounds + contentSize + backgroundColor + showsScrollIndicator
 + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
- (UIScrollView *)initWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate {
    return [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces delegate:delegate];
}

/**
 create scrollView by center and bounds + contentSize + backgroundColor + showsScrollIndicator
 + bounces + delegate
 
 @param backgroundColor UIColor或者NSString或者NSNumber格式
 @param showsScrollIndicator 设置属性showsVerticalScrollIndicator和showsHorizontalScrollIndicator
 @param bounces 设置属性bounces
 */
+ (UIScrollView *)scrollViewWithCenter:(CGPoint)center bounds:(CGRect)bounds contentSize:(CGSize)contentSize backgroundColor:(nullable id)backgroundColor showsScrollIndicator:(BOOL)showsScrollIndicator bounces:(BOOL)bounces delegate:(id)delegate {
    UIScrollView   *scrollView = [UIScrollView scrollViewWithCenter:center bounds:bounds contentSize:contentSize backgroundColor:backgroundColor showsScrollIndicator:showsScrollIndicator bounces:bounces];
    if (delegate) {
        scrollView.delegate = delegate;
    }
    return scrollView;
}

/**
 添加视图
 
 @param count 添加视图的个数
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 */
- (void)addViewsCount:(NSInteger)count starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize {
    [self addViewsCount:count backgroundColors:@[] starPoint:starPoint interval:interval viewSize:viewSize direction:Frg_ScrollViewAddViewDirectionType_Horizontal taps:nil];
}

/**
 添加视图
 
 @param count 添加视图的个数
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 @param tapBlock 添加的视图的点击事件
 */
- (void)addViewsCount:(NSInteger)count starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize taps:(nullable void(^)(id sender,NSInteger index))tapBlock {
    [self addViewsCount:count backgroundColors:@[] starPoint:starPoint interval:interval viewSize:viewSize direction:Frg_ScrollViewAddViewDirectionType_Horizontal taps:tapBlock];
}

/**
 添加视图
 
 @param count 添加视图的个数
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 @param direction 添加视图的方向
 */
- (void)addViewsCount:(NSInteger)count starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize direction:(Frg_ScrollViewAddViewDirectionType)direction {
    [self addViewsCount:count backgroundColors:@[] starPoint:starPoint interval:interval viewSize:viewSize direction:direction taps:nil];
}

/**
 添加视图
 
 @param count 添加视图的个数
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 @param direction 添加视图的方向
 @param tapBlock 添加的视图的点击事件
 */
- (void)addViewsCount:(NSInteger)count starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize direction:(Frg_ScrollViewAddViewDirectionType)direction taps:(nullable void(^)(id sender,NSInteger index))tapBlock {
    [self addViewsCount:count backgroundColors:@[] starPoint:starPoint interval:interval viewSize:viewSize direction:direction taps:tapBlock];
}

/**
 添加视图
 
 @param count 添加视图的个数
 @param backgroundColors 添加视图的背景色,UIColor或者NSString或者NSNumber格式的集合
 （如果背景色一样的话，可以在数组里添加一个数据,如@[@"f"])
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 */
- (void)addViewsCount:(NSInteger)count backgroundColors:(NSArray <id>*)backgroundColors starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize {
    [self addViewsCount:count backgroundColors:backgroundColors starPoint:starPoint interval:interval viewSize:viewSize direction:Frg_ScrollViewAddViewDirectionType_Horizontal taps:nil];
}

/**
 添加视图
 
 @param count 添加视图的个数
 @param backgroundColors 添加视图的背景色,UIColor或者NSString或者NSNumber格式的集合
 （如果背景色一样的话，可以在数组里添加一个数据,如@[@"f"])
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 @param tapBlock 添加的视图的点击事件
 */
- (void)addViewsCount:(NSInteger)count backgroundColors:(NSArray <id>*)backgroundColors starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize taps:(nullable void(^)(id sender,NSInteger index))tapBlock {
    [self addViewsCount:count backgroundColors:backgroundColors starPoint:starPoint interval:interval viewSize:viewSize direction:Frg_ScrollViewAddViewDirectionType_Horizontal taps:tapBlock];
}

/**
 添加视图
 
 @param count 添加视图的个数
 @param backgroundColors 添加视图的背景色,UIColor或者NSString或者NSNumber格式的集合
 （如果背景色一样的话，可以在数组里添加一个数据,如@[@"f"])
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 @param direction 添加视图的方向
 */
- (void)addViewsCount:(NSInteger)count backgroundColors:(NSArray <id>*)backgroundColors starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize direction:(Frg_ScrollViewAddViewDirectionType)direction {
    [self addViewsCount:count backgroundColors:backgroundColors starPoint:starPoint interval:interval viewSize:viewSize direction:direction taps:nil];
}

/**
 添加视图
 
 @param count 添加视图的个数
 @param backgroundColors 添加视图的背景色,UIColor或者NSString或者NSNumber格式的集合
                        （如果背景色一样的话，可以在数组里添加一个数据,如@[@"f"])
 @param starPoint 第一个视图的起始点
 @param interval 每张视图的间距
 @param direction 添加视图的方向
 @param tapBlock 添加的视图的点击事件
 */
- (void)addViewsCount:(NSInteger)count backgroundColors:(NSArray <id>*)backgroundColors starPoint:(CGPoint)starPoint interval:(CGFloat)interval viewSize:(CGSize)viewSize direction:(Frg_ScrollViewAddViewDirectionType)direction taps:(nullable void(^)(id sender,NSInteger index))tapBlock {
    if (count <= 0) {
        return;
    }
    NSInteger   newInterval = 0;
    if (direction == Frg_ScrollViewAddViewDirectionType_Horizontal) {
        newInterval = starPoint.x;
    }else {
        newInterval = starPoint.y;
    }
    for (int i = 0; i < count; i ++) {
        CGRect   viewFrame = CGRectZero;
        if (direction == Frg_ScrollViewAddViewDirectionType_Horizontal) {
            viewFrame = CGRectMake(newInterval,starPoint.y, viewSize.width, viewSize.height);
        }else {
            viewFrame = CGRectMake(starPoint.x,newInterval, viewSize.width, viewSize.height);
        }
        UIColor   *new_backgroundColor = [UIColor whiteColor];
        if (![UIKitBridge isEmpty:backgroundColors] && backgroundColors.count > 0) {
            if (backgroundColors.count > i) {
                new_backgroundColor = [UIKitBridge safeColor:backgroundColors[i] baseColor:[UIColor whiteColor]];
            }
        }
        UIView   *view = [UIView viewWithFrame:viewFrame backgroundColor:new_backgroundColor tap:^(id  _Nonnull sender) {
            if (tapBlock) {
                tapBlock(sender,i);
            }
        }];
        [self addSubview:view];
        if (direction == Frg_ScrollViewAddViewDirectionType_Horizontal) {
            newInterval = newInterval + viewSize.width + interval;
        }else {
            newInterval = newInterval + viewSize.height + interval;
        }
    }
    if (direction == Frg_ScrollViewAddViewDirectionType_Horizontal) {
        self.contentSize = CGSizeMake(newInterval - interval + starPoint.x, 0);
    }else {
        self.contentSize = CGSizeMake(0, newInterval - interval + starPoint.y);
    }
}

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 */
- (void)addimages:(NSArray <id>*)imagesArray {
    [self addimages:imagesArray starPoint:CGPointMake(0, 0) interval:0 direction:Frg_ScrollViewAddImageDirectionType_Horizontal taps:nil];
}

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 @param tapBlock 添加的图片的点击事件
 */
- (void)addimages:(NSArray <id>*)imagesArray taps:(nullable void(^)(id sender,NSInteger index))tapBlock {
    [self addimages:imagesArray starPoint:CGPointMake(0, 0) interval:0 direction:Frg_ScrollViewAddImageDirectionType_Horizontal taps:tapBlock];
}

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 @param starPoint 第一张图片的起始点
 @param tapBlock 添加的图片的点击事件
 */
- (void)addimages:(NSArray <id>*)imagesArray starPoint:(CGPoint)starPoint taps:(nullable void(^)(id sender,NSInteger index))tapBlock {
    [self addimages:imagesArray starPoint:starPoint interval:0 direction:Frg_ScrollViewAddImageDirectionType_Horizontal taps:tapBlock];
}

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 @param starPoint 第一张图片的起始点
 @param interval 每张图片的间距
 */
- (void)addimages:(NSArray <id>*)imagesArray starPoint:(CGPoint)starPoint interval:(CGFloat)interval {
    [self addimages:imagesArray starPoint:starPoint interval:interval direction:Frg_ScrollViewAddImageDirectionType_Horizontal taps:nil];
}

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 @param starPoint 第一张图片的起始点
 @param interval 每张图片的间距
 @param tapBlock 添加的图片的点击事件
 */
- (void)addimages:(NSArray <id>*)imagesArray starPoint:(CGPoint)starPoint interval:(CGFloat)interval taps:(nullable void(^)(id sender,NSInteger index))tapBlock {
    [self addimages:imagesArray starPoint:starPoint interval:interval direction:Frg_ScrollViewAddImageDirectionType_Horizontal taps:tapBlock];
}

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 @param starPoint 第一张图片的起始点
 @param interval 每张图片的间距
 @param direction 添加图片的方向
 */
- (void)addimages:(NSArray <id>*)imagesArray starPoint:(CGPoint)starPoint interval:(CGFloat)interval direction:(Frg_ScrollViewAddImageDirectionType)direction {
    [self addimages:imagesArray starPoint:starPoint interval:interval direction:direction taps:nil];
}

/**
 添加图片
 
 @param imagesArray UIImage或者NSString格式的集合
 @param starPoint 第一张图片的起始点
 @param interval 每张图片的间距
 @param direction 添加图片的方向
 @param tapBlock 添加的图片的点击事件
 */
- (void)addimages:(NSArray <id>*)imagesArray starPoint:(CGPoint)starPoint interval:(CGFloat)interval direction:(Frg_ScrollViewAddImageDirectionType)direction taps:(nullable void(^)(id sender,NSInteger index))tapBlock {
    if ([UIKitBridge isEmpty:imagesArray] || imagesArray.count == 0) {
        return;
    }
    CGFloat  newInterval = 0;
    if (direction == Frg_ScrollViewAddImageDirectionType_Horizontal) {
        newInterval = starPoint.x;
    }else {
        newInterval = starPoint.y;
    }
    for (NSInteger i = 0; i < imagesArray.count; i ++) {
        UIImage   *image = [UIImage safeImage:imagesArray[i]];
        if (!image) {
            continue;
        }
        CGRect   imageFrame = CGRectZero;
        if (direction == Frg_ScrollViewAddImageDirectionType_Horizontal) {
            imageFrame = CGRectMake(newInterval,starPoint.y, image.size.width, image.size.height);
        }else {
            imageFrame = CGRectMake(starPoint.x,newInterval, image.size.width, image.size.height);
        }
        UIImageView   *imageView = [[UIImageView alloc] initWithFrame:imageFrame image:image tap:^(id  _Nonnull sender) {
            if (tapBlock) {
                tapBlock(sender,i);
            }
        }];
        [self addSubview:imageView];
        if (direction == Frg_ScrollViewAddImageDirectionType_Horizontal) {
            newInterval = newInterval + image.size.width + interval;
        }else {
            newInterval = newInterval + image.size.height + interval;
        }
    }
   
    if (direction == Frg_ScrollViewAddImageDirectionType_Horizontal) {
        self.contentSize = CGSizeMake(newInterval - interval + starPoint.x, 0);
    }else {
        self.contentSize = CGSizeMake(0, newInterval - interval + starPoint.y);
    }
}

@end
